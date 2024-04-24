#include "header.h"

/*-----------------*\
 | Mode | Function |
 *------*----------*
 | 0    |    FFT   |
 | 1    |   iFFT   |
 | 2    |    NTT   |
 | 3    |   iNTT   |
 | 4    |  adj_fft |
 | 5    |  mul_fft |
\*------*----------*/

void top(memcell in1[SIZE], memcell in2[SIZE], u16 mode) {
#pragma HLS INTERFACE m_axi port=in1 bundle=gmem0 offset=slave depth=1024
#pragma HLS INTERFACE m_axi port=in2 bundle=gmem0 offset=slave depth=1024
#pragma HLS INTERFACE s_axilite port=mode
#pragma HLS INTERFACE s_axilite port=return
//=====================================================//
#pragma HLS ALLOCATION function instances=fiFFNTT  limit=2
#pragma HLS ALLOCATION function instances=in_copy  limit=2
#pragma HLS ALLOCATION function instances=out_copy limit=1
//=====================================================//
#pragma HLS INLINE off
	memcell buf1[SIZE];
	memcell buf2[SIZE];
	memcell tmp[SIZE];
	if (mode == 0) {
		//======  1FFT ========//
		in_copy(in1, buf1, fft_req);
		fiFFNTT(buf1, fft_req, 0);
		out_copy(buf1, in1, fft_req, 0);
	} else if (mode == 1) {
		//======= iFFT ========//
		in_copy(in1, buf1, fft_req);
		fiFFNTT(buf1, fft_req, 1);
		out_copy(buf1, in1, fft_req, 1);
	} else if (mode == 2) {
		//======  1NTT ========//
		in_copy(in1, buf1, ntt_req);
		fiFFNTT(buf1, ntt_req, 0);
		out_copy(buf1, in1, ntt_req, 0);
	} else if (mode == 3) {
		//======= iNTT ========//
		in_copy(in1, buf1, ntt_req);
		fiFFNTT(buf1, ntt_req, 1);
		out_copy(buf1, in1, ntt_req, 1);
	} else if (mode == 4) {
		//====== adj_FFT ======//
		in_copy(in1, buf1, fft_req);
		fiFFNTT(buf1, fft_req, 0); // Forward FFT
		NEGATE: for(int i = SIZE2; i < SIZE; i++)
		#pragma HLS PIPELINE II=1
			buf1[i].f = negate(buf1[i].f);
		fiFFNTT(buf1, fft_req, 1); // Inverse FFT
		out_copy(buf1, in1, fft_req, 1);
	} else if (mode == 5) {
		//====== mul_FFT ======//
		// Take two polynomials 'a', 'b'
		// Run FFT and do the complex multiplication
		// Run iFFT
		in_copy(in1, buf1, fft_req);
		in_copy(in2, buf2, fft_req);
		fiFFNTT(buf1, fft_req, 0); // Forward FFT
		fiFFNTT(buf2, fft_req, 0); // Forward FFT
		fpr product_real, product_imag;
		COMPLEX_MUL: for (int r = 0; r < SIZE2; r++) {
		#pragma HLS PIPELINE II=3
		#pragma HLS ALLOCATION function instances=d_mul limit=1
		#pragma HLS ALLOCATION function instances=d_add limit=2
			int i = r + SIZE2;
			fpr a_re = buf1[r].f;
			fpr a_im = buf1[i].f;
			fpr b_re = buf2[r].f;
			fpr b_im = buf2[i].f;
			fpr sub_b = d_add(b_re, negate(b_im));
			fpr add_b = d_add(b_re, b_im);
			fpr sub_a = d_add(a_re, negate(a_im));
			fpr mul_1 = d_mul(a_re, sub_b);
			fpr mul_2 = d_mul(a_im, add_b);
			fpr mul_3 = d_mul(b_im, sub_a);
			tmp[r].f  = d_add(mul_1, mul_3);
			tmp[i].f  = d_add(mul_2, mul_3);
		}
		fiFFNTT(tmp, fft_req, 1); // Inverse FFT
		out_copy(tmp, in1, fft_req, 1);
	} else {
		//======  FFT  ========//
		in_copy(in1, buf1, fft_req);
		fiFFNTT(buf1, fft_req, 0);
		out_copy(buf1, in1, fft_req, 0);
	}
}

inline fpr negate(fpr input) {
#pragma HLS INLINE
	union {
		fpr f;
		u64 i;
	} converter;
	converter.f = input;
	ap_uint<64> tmp = converter.i;
	tmp[63] = (~tmp[63]);
	converter.i = tmp;
	return converter.f;
}



