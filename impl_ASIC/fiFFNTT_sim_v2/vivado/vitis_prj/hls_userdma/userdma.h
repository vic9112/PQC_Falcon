#ifndef __HEADER_H__
#define __HEADER_H__
#include <gmp.h>  // First include GMP
#ifndef __gmp_const
#define __gmp_const const
#endif
#include <mpfr.h>  // Then include MPFR

#include "ap_int.h"
#include "ap_axi_sdata.h"
#include "hls_stream.h"

#define BUF_LEN 1024

typedef ap_axiu<32, 2, 0, 0> trans_pkt;	//tuser is FSIC tuser (2 bits) and user project upsb (5 bits)


struct memcell {
	ap_uint<32> lower;
	ap_uint<32> upper;
};

void userdma(
		hls::stream<trans_pkt> &inStreamTop,
		hls::stream<trans_pkt> &outStreamTop,
		ap_uint<2>  kernel_mode, // 0: FFT, 1: iFFT, 2: NTT, 3: iNTT
		bool 		*s2m_buf_sts,
		bool 		*m2s_buf_sts,
		memcell     s2mbuf[BUF_LEN],
		memcell     m2sbuf[BUF_LEN],
		ap_uint<2>  *s2m_err);

static constexpr int MAX_BURST_LENGTH = 256;
static constexpr int BUFFER_FACTOR = 4;

// Buffer sizes
static constexpr int DATA_DEPTH = MAX_BURST_LENGTH * BUFFER_FACTOR;
static constexpr int COUNT_DEPTH = BUFFER_FACTOR;

struct data {
	ap_int<32> data_filed;
	ap_int<1> last;
};

/*
struct out_data {
	ap_int<32> data_filed;
	ap_int<2> upsb;
	ap_int<1> last;
};
*/

#endif
