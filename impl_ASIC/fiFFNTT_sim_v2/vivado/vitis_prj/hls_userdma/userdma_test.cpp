#include "userdma.h"
#include "test_data.h"

void test_NTT (memcell s2m_buf[BUF_LEN], memcell m2s_buf[BUF_LEN], memcell result[BUF_LEN]) {
	int err = 0;
	hls::stream<trans_pkt> inStream_t, outStream_t;
	trans_pkt   dataStream_t;

	bool s2m_buf_sts = 0;
	bool m2s_buf_sts = 0;
	ap_uint<2> s2m_err;

	int	j;

	// Initialize
	for (j = 0; j < BUF_LEN; j++){
		s2m_buf[j].uin.lower = 0;
		s2m_buf[j].uin.upper = 0;
	}


	// Input NTT first
	for(int i = 0; i < 1024; i++){
		m2s_buf[i].uin.lower = NTT_in[i];
	}

	for (int x = 0; x < 1024; x++) {
		dataStream_t.data = NTT_out[x];
		dataStream_t.keep = -1;
		dataStream_t.user = (x == 0);
		dataStream_t.last = (x == 1023);
		inStream_t.write(dataStream_t);
	}


	printf("\n");
	//printf("========================================\n");
	//printf("Before: s2m_buf_sts is %d\n", s2m_buf_sts);
	//printf("Before: m2s_buf_sts is %d\n", m2s_buf_sts);
	//printf("========================================\n");
	printf("\n");
	printf("Calling S2MM/MM2S design...\n");

	userdma(inStream_t, outStream_t, 2, &s2m_buf_sts, &m2s_buf_sts, s2m_buf, m2s_buf, &s2m_err);

	printf("\n");
	//printf("========================================\n");
	//printf("After: s2m_buf_sts is %d\n", s2m_buf_sts);
	//printf("After: m2s_buf_sts is %d\n", m2s_buf_sts);
	//printf("========================================");
	printf("\n");

	if(s2m_buf_sts == 1){
		printf("s2m_err: %x", s2m_err);
		printf("\nS2M data\n");
		printf("s2m_buf, address: %x", s2m_buf);
		for (j = 0; j < 1024; j++){
			if((j % 32) == 0) printf("\n");
			printf("%5d ", s2m_buf[j].uin.lower);
		}
		printf("\n");
	}

	if(m2s_buf_sts == 1){
		printf("\nM2S data\n");
		dataStream_t = outStream_t.read();
		printf("\nFirst Programmed Data for fiFFNTT mode: %5d \n\n", dataStream_t.data);
		for (j = 0; j < 1024; j++){
			if((j % 32) == 0) printf("\n");
			dataStream_t = outStream_t.read();
			printf("%5d ", dataStream_t.data);
		}
		printf("\n");
	}
	printf("\n");
	printf("s2m_err: %x", s2m_err);
	printf("\n");
	printf("\n");
}

void test_FFT (memcell s2m_buf[BUF_LEN], memcell m2s_buf[BUF_LEN], memcell result[BUF_LEN]) {
	int err = 0;
	hls::stream<trans_pkt> inStream_t, outStream_t;
	trans_pkt   dataStream_t;

	bool s2m_buf_sts = 0;
	bool m2s_buf_sts = 0;
	ap_uint<2> s2m_err;

	int	j;

	// Initialize
	for (j = 0; j < BUF_LEN; j++){
		s2m_buf[j].fpr = 0;
	}


	// Input NTT first
	for(int i = 0; i < 1024; i++){
		m2s_buf[i].fpr = FFT_in[i];
	}
	bool high = 0;
	memcell fft_out;
	for (int x = 0; x < 1024; x++) {
		fft_out.fpr = FFT_out[x];
		dataStream_t.data = fft_out.uin.lower;
		dataStream_t.keep = -1;
		dataStream_t.user = (x == 0);
		dataStream_t.last = 0;
		inStream_t.write(dataStream_t);
		dataStream_t.data = fft_out.uin.upper;
		dataStream_t.keep = -1;
		dataStream_t.user = (x == 0);
		dataStream_t.last = (x == 1023);
		inStream_t.write(dataStream_t);
	}

	printf("\n");
	//printf("========================================\n");
	//printf("Before: s2m_buf_sts is %d\n", s2m_buf_sts);
	//printf("Before: m2s_buf_sts is %d\n", m2s_buf_sts);
	//printf("========================================\n");
	printf("\n");
	printf("Calling S2MM/MM2S design...\n");

	userdma(inStream_t, outStream_t, 0, &s2m_buf_sts, &m2s_buf_sts, s2m_buf, m2s_buf, &s2m_err);

	printf("\n");
	//printf("========================================\n");
	//printf("After: s2m_buf_sts is %d\n", s2m_buf_sts);
	//printf("After: m2s_buf_sts is %d\n", m2s_buf_sts);
	//printf("========================================");
	printf("\n");

	if(s2m_buf_sts == 1){
		printf("s2m_err: %x", s2m_err);
		printf("\nS2M data\n");
		printf("s2m_buf, address: %x", s2m_buf);
		for (j = 0; j < 1024; j++){
			if((j % 8) == 0) printf("\n");
			printf("%15f ", s2m_buf[j].fpr);
		}
		printf("\n");
	}

	memcell m2s_data[1024];

	if(m2s_buf_sts == 1){
		printf("\nM2S data\n");
		dataStream_t = outStream_t.read();
		printf("\nFirst Programmed Data for fiFFNTT mode: %5d \n\n", dataStream_t.data);
		for (j = 0; j < 1024; j++){
			dataStream_t = outStream_t.read();
			m2s_data[j].uin.lower = dataStream_t.data;
			dataStream_t = outStream_t.read();
			m2s_data[j].uin.upper = dataStream_t.data;
			if((j % 16) == 0) printf("\n");
			printf("%15f ", m2s_data[j].fpr);
		}
		printf("\n");
	}
	printf("\n");
	printf("s2m_err: %x", s2m_err);
	printf("\n");
	printf("\n");
}

int main() {
	memcell s2m_buf[BUF_LEN], m2s_buf[BUF_LEN], result[BUF_LEN];

	test_FFT(s2m_buf, m2s_buf, result);
	test_NTT(s2m_buf, m2s_buf, result);
/*
  if((s2m_buf_sts == 1) && (m2s_buf_sts == 1)){
	  userdma(inStream_t, &s2m_buf_sts, S2M_LEN,  s2m_buf, &s2m_err, m2s_buf, &m2s_buf_sts, M2S_LEN, outStream_t);
	  printf("clear s2m_buf_sts -> %d\n", s2m_buf_sts);
	  printf("clear m2s_buf_sts -> %d\n", m2s_buf_sts);
  } else if((s2m_buf_sts == 1) && (m2s_buf_sts == 0)){
	  userdma(inStream_t, &s2m_buf_sts, S2M_LEN,  s2m_buf, &s2m_err, m2s_buf, &m2s_buf_sts, M2S_LEN, outStream_t);
	  printf("clear s2m_buf_sts -> %d\n", s2m_buf_sts);
  } else if((s2m_buf_sts == 0) && (m2s_buf_sts == 1)){
	  userdma(inStream_t, &s2m_buf_sts, S2M_LEN,  s2m_buf, &s2m_err, m2s_buf, &m2s_buf_sts, M2S_LEN, outStream_t);
	  printf("clear m2s_buf_sts -> %d\n", m2s_buf_sts);
  }
*/
	return 0;
}
