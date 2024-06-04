#include "ap_int.h"
#include "ap_axi_sdata.h"
#include "hls_stream.h"

#define BUF_LEN 1024

typedef ap_axiu<32, 2, 0, 0> trans_pkt;	//tuser is FSIC tuser (2 bits) and user project upsb (5 bits)

void userdma(hls::stream<trans_pkt> &inStreamTop,
			 bool 		*s2m_buf_sts,
			 ap_uint<32> s2m_len,
			 ap_uint<1>  s2m_enb_clrsts,
			 ap_uint<32> s2mbuf[BUF_LEN],
			 ap_uint<2> *s2m_err,
			 ap_uint<32> m2sbuf[BUF_LEN],
			 bool		*m2s_buf_sts,
			 int 		 m2s_len,
			 ap_uint<1>  m2s_enb_clrsts,
			 hls::stream<trans_pkt> &outStreamTop);

static constexpr int MAX_BURST_LENGTH = 16;
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

