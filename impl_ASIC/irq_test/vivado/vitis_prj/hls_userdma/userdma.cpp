#include "userdma.h"

/// Reads from in_stream and in_counts, Write to out_memory
void streamtoparallelwithburst(hls::stream<data> &in_stream, hls::stream<int> &in_counts, ap_uint<1> in_en_clrsts, bool &buf_sts,
	ap_uint<32> in_s2m_len, ap_uint<32> *out_memory) {

	data in_val;
	int count;
	static bool out_sts = 0;
	static ap_uint<32> final_s2m_len = 0;

	if(in_en_clrsts) {
		out_memory -= final_s2m_len;
		final_s2m_len = 0;
		buf_sts = 0;
	}

	do {
		count = in_counts.read();

		for (int i = 0; i < count; ++i) {
		#pragma HLS PIPELINE
			in_val = in_stream.read();
			out_memory[i] = in_val.data_filed;
		}
		out_memory += count;
		final_s2m_len += count;

		if(final_s2m_len == in_s2m_len){
			out_sts = 1;
		}
		buf_sts = out_sts;

	} while(final_s2m_len < in_s2m_len);

}

void getinstream(hls::stream<trans_pkt> &in_stream, ap_uint<1> in_en_clrsts, ap_uint<32> in_s2m_len,
	ap_uint<2> &s2m_err, hls::stream<data > &out_stream, hls::stream<int>& out_counts) {
	int count = 0;
    static ap_uint<32> in_len = 0;
    trans_pkt in_val;

    if (in_en_clrsts) {
    	in_len = 0;
    	s2m_err = 0;
    }

    do {
	#pragma HLS PIPELINE
    	in_val = in_stream.read();
		data out_val = {in_val.data, in_val.last};
		out_stream.write(out_val);

		s2m_err = 0;

		if ((in_len < in_s2m_len - 1) && (in_val.last == 1)) // t_last asserted but DMA hasn't reach stream length
			s2m_err = 1;

		if ((in_len == in_s2m_len - 1) && (in_val.last != 1)) // reach stream length but t_last not asserted
			s2m_err = 2;

		count += 1;
		in_len += 1;

		if ((count >= MAX_BURST_LENGTH) || (in_val.last == 1)) {
			out_counts.write(count);
			count = 0;
		}
    } while(in_len < in_s2m_len);

}

//Read MM
void paralleltostreamwithburst(ap_uint<32> *in_memory, ap_uint<1> in_en_clrsts, int in_m2s_len,
	hls::stream<data> &out_stream) {
	data out_val;
	int count;
	static bool out_sts = 0;
	static int  m2s_len = 0;

	if (in_en_clrsts)
		m2s_len = 0;
	else
		m2s_len = in_m2s_len;

	do {
		if(m2s_len > MAX_BURST_LENGTH){
			count = MAX_BURST_LENGTH;
		}else{
			count = m2s_len;
		}

		for (int i = 0; i < count; ++i) {
		#pragma HLS PIPELINE
			out_val.data_filed = in_memory[i];
			if((m2s_len <= MAX_BURST_LENGTH) && (i == (count - 1)))
				out_val.last = 1;
			else
				out_val.last = 0;

			out_stream.write(out_val);
			m2s_len--;
		}
		in_memory += count;

	} while(m2s_len != 0);
}

//output stream 
void sendoutstream(hls::stream<data> &in_stream, ap_uint<1> in_en_clrsts,
	bool &buf_sts, hls::stream<trans_pkt> &out_stream) {

	int count = 0;
    trans_pkt out_val;

    do {
		#pragma HLS PIPELINE
    	data in_data = in_stream.read();
    	out_val.data = in_data.data_filed;
    	// out_val.user = in_data.upsb;
    	out_val.last = in_data.last;
    	out_stream.write(out_val);

    } while(!out_val.last);

    buf_sts = (in_en_clrsts)? 0 : (out_val.last)? 1 : 0;

}

void userdma(hls::stream<trans_pkt> &inStreamTop,
		bool 		*s2m_buf_sts,
		ap_uint<32> s2m_len,		// 0x28: stream to memory length
		ap_uint<1> 	s2m_enb_clrsts,
		ap_uint<32> s2mbuf[BUF_LEN],
		ap_uint<2>  *s2m_err,
		ap_uint<32> m2sbuf[BUF_LEN],
		bool 		*m2s_buf_sts,
		int 		m2s_len,		// 0x80: memory to stream length
		ap_uint<1>  m2s_enb_clrsts,
		hls::stream<trans_pkt> &outStreamTop) {
#pragma HLS INTERFACE axis register_mode=both register port=inStreamTop
#pragma HLS INTERFACE m_axi max_write_burst_length=16 latency=10 depth=1024 bundle=gmem0 port=s2mbuf offset = slave
#pragma HLS INTERFACE s_axilite port = s2m_buf_sts bundle = control
#pragma HLS INTERFACE s_axilite port = s2m_len bundle = control
#pragma HLS INTERFACE s_axilite port = s2m_enb_clrsts bundle = control
#pragma HLS INTERFACE s_axilite port = s2mbuf bundle = control
#pragma HLS INTERFACE s_axilite port = s2m_err bundle = control	
#pragma HLS INTERFACE axis register_mode=both register port=outStreamTop
#pragma HLS INTERFACE m_axi max_read_burst_length=16 num_read_outstanding=4 latency=10 depth=1024 bundle=gmem1 port=m2sbuf offset = slave
#pragma HLS INTERFACE s_axilite port = m2s_buf_sts bundle = control
#pragma HLS INTERFACE s_axilite port = m2s_len bundle = control
#pragma HLS INTERFACE s_axilite port = m2s_enb_clrsts bundle = control
#pragma HLS INTERFACE s_axilite port = m2sbuf bundle = control
#pragma HLS INTERFACE s_axilite port = return bundle = control

#pragma HLS DATAFLOW

	hls::stream<data, DATA_DEPTH> inbuf;
	hls::stream<int, COUNT_DEPTH> incount;
	hls::stream<data, DATA_DEPTH> outbuf;
  
	getinstream(inStreamTop, s2m_enb_clrsts, s2m_len, *s2m_err, inbuf, incount);
	streamtoparallelwithburst(inbuf, incount, s2m_enb_clrsts, *s2m_buf_sts, s2m_len, s2mbuf);
	paralleltostreamwithburst(m2sbuf, m2s_enb_clrsts, m2s_len, outbuf);
	sendoutstream(outbuf, m2s_enb_clrsts, *m2s_buf_sts, outStreamTop);

}
