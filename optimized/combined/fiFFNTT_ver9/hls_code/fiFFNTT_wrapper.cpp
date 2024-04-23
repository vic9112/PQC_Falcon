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
#pragma HLS ALLOCATION function instances=fiFFNTT limit=2
//=====================================================//
#pragma HLS INLINE off
	memcell  buf1[SIZE];
	memcell  buf2[SIZE];
	memcell  tmp[SIZE];
	switch (mode) {
		case 0:
			//======  FFT  ========//
			in_copy(in1, buf1, fft_req);
			fiFFNTT(buf1, fft_req, 0);
			out_copy(buf1, in1, fft_req, 0);
			break;
		case 1:
			//======= iFFT ========//
			in_copy(in1, buf1, fft_req);
			fiFFNTT(buf1, fft_req, 1);
			out_copy(buf1, in1, fft_req, 1);
			break;
		case 2:
			//======  NTT  ========//
			in_copy(in1, buf1, ntt_req);
			fiFFNTT(buf1, ntt_req, 0);
			out_copy(buf1, in1, ntt_req, 0);
			break;
		case 3:
			//======= iNTT ========//
			in_copy(in1, buf1, ntt_req);
			fiFFNTT(buf1, ntt_req, 1);
			out_copy(buf1, in1, ntt_req, 1);
			break;
		case 4:
			//====== adj_FFT ======//
			in_copy(in1, buf1, fft_req);
			fiFFNTT(buf1, fft_req, 0); // Forward FFT
			NEGATE: for(int i = SIZE2; i < SIZE; i++)
			#pragma HLS PIPELINE II=1
				buf1[i].f = negate(buf1[i].f);
			fiFFNTT(buf1, fft_req, 1); // Inverse FFT
			out_copy(buf1, in1, fft_req, 1);
			break;
		case 5:
			//====== mul_FFT ======//
			in_copy(in1, buf1, fft_req);
			in_copy(in2, buf2, fft_req);
			fiFFNTT(buf1, fft_req, 0); // Forward FFT
			fiFFNTT(buf2, fft_req, 0); // Forward FFT
			MUL_RE: for (int k = 0; k < SIZE2; k++)
			#pragma HLS PIPELINE II=1
				tmp[k].f = d_add(d_mul(buf1[k].f, buf2[k].f), negate(d_mul(buf1[k + 512].f, buf2[k + 512].f)));
			MUL_IM: for (int l = SIZE2; l < SIZE; l++)
			#pragma HLS PIPELINE II=1
				tmp[l].f = d_add(d_mul(buf1[l].f, buf2[l - 512].f), d_mul(buf1[l - 512].f, buf2[l].f));
			fiFFNTT(tmp, fft_req, 1); // Inverse FFT
			out_copy(tmp, in1, fft_req, 1);
	    	break;
		default:
			in_copy(in1, buf1, fft_req);
			fiFFNTT(buf1, fft_req, 0);
			out_copy(buf1, in1, fft_req, 0);
	}
}




