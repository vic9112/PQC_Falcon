#include "userdma.h"

/// Reads from in_stream and in_counts, Write to out_memory
void streamtoparallelwithburst(
	hls::stream<data> &in_stream,
	hls::stream<int>  &in_counts,
	bool volatile     *buf_sts,
	ap_uint<2> 		  kernel_mode,
	memcell           *out_memory
	) {

	data in_val;
	int count = 0;
	ap_uint<32> final_s2m_len = 0;
	ap_uint<32> s2m_len;
	s2m_len = 1024;
	bool even = ((kernel_mode == 0) || (kernel_mode == 1))? 1 : 0;
	bool high = 0;
	*buf_sts = 0;

	do {
		count = in_counts.read();
		high = 0;
		int a = 0;
		for (int i = 0; i < count; ++i) {
		#pragma HLS PIPELINE
			in_val = in_stream.read();
			//////////////////////////////////////////////////////
			if (high)
				out_memory[a-1].upper = in_val.data_filed;
			else
				out_memory[a].lower = in_val.data_filed;
			high = (even)? (!high) : high;
			//////////////////////////////////////////////////////
			a = (even)? (high)? a + 1 : a : a + 1;
		}

		if (even) {
			out_memory += count / 2;
			final_s2m_len += count / 2;
		} else {
			out_memory += count;
			final_s2m_len += count;
		}

		if (final_s2m_len == 1024)
			out_memory -= 1024;

	} while(final_s2m_len < s2m_len);

	*buf_sts = 1;

}

void getinstream(
	hls::stream<trans_pkt> &in_stream,
	ap_uint<2>             kernel_mode,
	ap_uint<2>             &s2m_err,
	hls::stream<data >     &out_stream,
	hls::stream<int>       &out_counts
	) {

	int count = 0;
    ap_uint<32> in_len = 0;
	ap_uint<32> s2m_len;
    trans_pkt in_val;
    s2m_err = 0;
    in_len  = 0;
	s2m_len = ((kernel_mode == 0) || (kernel_mode == 1))? 2048 : 1024;
	bool even = ((kernel_mode == 0) || (kernel_mode == 1))? 1 : 0;

    do {
	#pragma HLS PIPELINE
    	in_val = in_stream.read();
		data out_val = {in_val.data, in_val.last};
		out_stream.write(out_val);

		s2m_err = 0;

		if ((in_len < s2m_len - 1) && (in_val.last == 1)) // t_last asserted but DMA hasn't reach stream length
			s2m_err = 1;
		if ((in_len == s2m_len - 1) && (in_val.last != 1)) // reach stream length but t_last not asserted
			s2m_err = 2;
		count += 1; // burst count

		in_len += 1;

		if ((count == MAX_BURST_LENGTH) || (in_val.last == 1)) {
			out_counts.write(count);
			count = 0;
		}

    } while(in_len < s2m_len);

}

//Read MM
void paralleltostreamwithburst(
	memcell           *in_memory,
	ap_uint<2>        kernel_mode,
	hls::stream<data> &out_stream
	) {

	data out_val;
	int count;
	int  m2s_len = 0;
	int  final_m2s_len = 0;
	m2s_len = ((kernel_mode == 0) || (kernel_mode == 1))? 2048 : 1024;
	final_m2s_len = m2s_len;
	bool even = ((kernel_mode == 0) || (kernel_mode == 1))? 1 : 0;
	bool high = 0;

	// First data: program kernel mode - 0: FFT, 1: iFFT, 2: NTT, 3: iNTT
	out_val.data_filed = (kernel_mode == 0)? 4/*{27'b0, 01, 00}*/: (kernel_mode == 1)? 5/*{27'b0, 01, 01}*/:
                         (kernel_mode == 2)? 6/*{27'b0, 01, 10}*/: (kernel_mode == 3)? 7/*{27'b0, 01, 11}*/: 0;
	out_val.last = 0;
	out_stream.write(out_val);

	do {
		if(final_m2s_len > MAX_BURST_LENGTH){
			count = MAX_BURST_LENGTH;
		}else{
			count = final_m2s_len;
		}
		high = 0;
		int a = 0;

		for (int i = 0; i < count; ++i) {
		#pragma HLS PIPELINE
			//////////////////////////////////////////////////////
			if (high)
				out_val.data_filed = in_memory[a-1].upper;
			else
				out_val.data_filed = in_memory[a].lower;
			high = (even)? (!high) : high;
			//////////////////////////////////////////////////////
			a = (even)? (high)? a + 1 : a : a + 1;

			if((final_m2s_len <= MAX_BURST_LENGTH) && (i == (count - 1)))
				out_val.last = 1;
			else
				out_val.last = 0;

			out_stream.write(out_val);
			final_m2s_len--;
		}
		if (even)
			in_memory += count / 2;
		else
			in_memory += count;

	} while(final_m2s_len != 0);

}

//output stream 
void sendoutstream(
	hls::stream<data>      &in_stream,
	bool volatile          *buf_sts,
	hls::stream<trans_pkt> &out_stream
	) {

	int count = 0;
    trans_pkt out_val;
    *buf_sts = 0;

    do {
		#pragma HLS PIPELINE
    	data in_data = in_stream.read();
    	out_val.data = in_data.data_filed;
    	// out_val.user = in_data.upsb;
    	out_val.last = in_data.last;
    	out_stream.write(out_val);

    	*buf_sts = (out_val.last)? 1 : 0;

    } while(!out_val.last);
}

void userdma(
	hls::stream<trans_pkt> &inStreamTop,
	hls::stream<trans_pkt> &outStreamTop,
	ap_uint<2>             kernel_mode,  // 0: FFT, 1: iFFT, 2: NTT, 3: iNTT
	bool volatile          *s2m_buf_sts,
	bool volatile          *m2s_buf_sts,
	memcell                s2mbuf[BUF_LEN],
	memcell                m2sbuf[BUF_LEN],
	ap_uint<2>             *s2m_err
	) {
#pragma HLS INTERFACE axis register_mode=both register port=inStreamTop
#pragma HLS INTERFACE axis register_mode=both register port=outStreamTop
#pragma HLS INTERFACE s_axilite port=kernel_mode bundle=control
#pragma HLS INTERFACE s_axilite port=s2m_buf_sts bundle=control
#pragma HLS INTERFACE s_axilite port=m2s_buf_sts bundle=control
#pragma HLS INTERFACE s_axilite port=s2mbuf bundle=control
#pragma HLS INTERFACE s_axilite port=m2sbuf bundle=control
#pragma HLS INTERFACE m_axi max_write_burst_length=256 depth=1024 bundle=gmem0 port=s2mbuf offset=slave
#pragma HLS INTERFACE m_axi max_read_burst_length=256 num_read_outstanding=4 depth=1024 bundle=gmem1 port=m2sbuf offset=slave
#pragma HLS INTERFACE s_axilite port=s2m_err bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control

#pragma HLS DATAFLOW

	hls::stream<data, DATA_DEPTH> inbuf ("in_stream_buf");
	hls::stream<int, COUNT_DEPTH> incount ("in_count");
	hls::stream<data, DATA_DEPTH> outbuf ("out_stream_buf");
  
	getinstream(inStreamTop, kernel_mode, *s2m_err, inbuf, incount);
	streamtoparallelwithburst(inbuf, incount, s2m_buf_sts, kernel_mode, s2mbuf);
	paralleltostreamwithburst(m2sbuf, kernel_mode, outbuf);
	sendoutstream(outbuf, m2s_buf_sts, outStreamTop);

}
