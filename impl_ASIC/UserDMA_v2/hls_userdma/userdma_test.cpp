#include "userdma.h"
#include "test_data.h"

typedef union {
		double fpr;
		struct {
			unsigned int lower;
			unsigned int upper;
			} uin;
		} fprcell;

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
		s2m_buf[j].lower = 0;
		s2m_buf[j].upper = 0;
	}


	// Input NTT first
	for(int i = 0; i < 1024; i++){
		m2s_buf[i].lower = NTT_in[i];
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
			printf("%5d ", s2m_buf[j].lower);
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
/*
	if ((m2s_buf_sts == 1) && (s2m_buf_sts == 1)) {
		clr_m2s_sts = 1;
		clr_s2m_sts = 1;
		userdma(inStream_t, outStream_t, 2, &s2m_buf_sts, &m2s_buf_sts, s2m_buf, m2s_buf, &s2m_err, clr_s2m_sts, clr_m2s_sts);
		printf("clear s2m buffer status -> %d\n", s2m_buf_sts);
		printf("clear m2s buffer status -> %d\n", m2s_buf_sts);
	} else if (m2s_buf_sts == 1) {
		clr_m2s_sts = 1;
		userdma(inStream_t, outStream_t, 2, &s2m_buf_sts, &m2s_buf_sts, s2m_buf, m2s_buf, &s2m_err, clr_s2m_sts, clr_m2s_sts);
		printf("clear m2s buffer status -> %d\n", m2s_buf_sts);
	} else if (s2m_buf_sts == 1) {
		clr_s2m_sts = 1;
		userdma(inStream_t, outStream_t, 2, &s2m_buf_sts, &m2s_buf_sts, s2m_buf, m2s_buf, &s2m_err, clr_s2m_sts, clr_m2s_sts);
		printf("clear s2m buffer status -> %d\n", s2m_buf_sts);
	}
*/
}

void test_FFT (memcell s2m_buf[BUF_LEN], memcell m2s_buf[BUF_LEN], memcell result[BUF_LEN]) {
	int err = 0;
	hls::stream<trans_pkt> inStream_t, outStream_t;
	trans_pkt   dataStream_t;

	bool s2m_buf_sts = 0;
	bool m2s_buf_sts = 0;
	ap_uint<2> s2m_err;

	int	j;

	fprcell f;

	// Initialize
	for (j = 0; j < BUF_LEN; j++){
		s2m_buf[j].lower = 0;
		s2m_buf[j].upper = 0;
	}


	// Input NTT first
	for(int i = 0; i < 1024; i++){
		f.fpr = FFT_in[i];
		m2s_buf[i].lower = f.uin.lower;
		m2s_buf[i].upper = f.uin.upper;
	}
	bool high = 0;
	memcell fft_out;
	for (int x = 0; x < 1024; x++) {
		f.fpr = FFT_out[x];
		fft_out.lower = f.uin.lower;
		fft_out.upper = f.uin.upper;
		dataStream_t.data = fft_out.lower;
		dataStream_t.keep = -1;
		dataStream_t.user = (x == 0);
		dataStream_t.last = 0;
		inStream_t.write(dataStream_t);
		dataStream_t.data = fft_out.upper;
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
			f.uin.lower = s2m_buf[j].lower;
			f.uin.upper = s2m_buf[j].upper;
			printf("%15f ", f.fpr);
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
			m2s_data[j].lower = dataStream_t.data;
			dataStream_t = outStream_t.read();
			m2s_data[j].upper = dataStream_t.data;
			if((j % 16) == 0) printf("\n");
			f.uin.lower = m2s_data[j].lower;
			f.uin.upper = m2s_data[j].upper;
			printf("%15f ", f.fpr);
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

	return 0;
}
