#pragma once 
#include "header.h"
#include <mc_scverify.h>
class PE{
	public:
	PE(){}
    void monty_mul(u32 *z ,u32 x, u32 y){
		u32 tmp1, tmp2;
	    tmp2 = x * y;
	    tmp1 = ((tmp2 * Q0I) & 0xFFFF) * Q;
	    tmp2 = (tmp2 + tmp1) >> 16;
	    tmp2 -= Q;
	    tmp2 += Q & -(tmp2 >> 31);
	    *z = tmp2;
	}
	fpr d_add(fpr a, fpr b) {
		return a + b;
	}
	fpr d_mul(fpr a, fpr b) {	
		return (a * b);
	}
  	u32 u_add(u32 a, u32 b) {
	return (a + b);
	}


	#pragma hls_design interface
	void CCS_BLOCK(run)(Stream1 in[1024], Stream1 out[1024], unsigned short int t_in, unsigned short int m_in, ac_channel<bool> &mode_in,ac_channel<bool> &mode_out, bool inverse) {
	bool mode;
	mode=mode_in.read();
	if(t_in==1024 and mode==true){
		for(int x=0;x<1024;x++){
			out[x]=in[x];
		}
	}
	else{
		unsigned short int t, m;
		t = (inverse)? (mode == ntt_req)? m_in : m_in >> 1 : t_in;
		m = (inverse)? (mode == ntt_req)? t_in : t_in << 1 : m_in;
		unsigned short int ht = t >> 1; // ht: half t: section size
		unsigned short int dt = t << 1; // dt: double t
		unsigned short int hm = m >> 1; // hm: half m
		unsigned short int hn = 512;  // 512
		unsigned short int index_const;
		if (inverse) index_const = t;
		else		 index_const = ht;
		// Variables of FFT
		fpr gm_re, gm_im;
		fpr x_re, x_im, y_re, y_im, tmp_re, tmp_im, tmp_re1, tmp_im1, tmp_re2, tmp_im2;
		// Variables of NTT
		u32 gm;
		u32 u, v, w;
		u32 tmp1, tmp2;
		BUTTERFLY: for (int n = 0; n < 512; n++) {
		unsigned short i = n + ((n / index_const) * index_const);
		unsigned short i_gm = n / index_const;
		int ifr = i + t, ifi = i + t + hn;
		int frx = i, fix = i + hn, fry = i + ht, fiy = i + ht + hn;
		if (inverse) {
			gm_re =        gm_re_tab[(hm + i_gm)];
			gm_im = -(gm_im_tab[(hm + i_gm)]);
			gm = iGMb[hm + i_gm];
		} else {
			gm_re = gm_re_tab[(m + i_gm)];
			gm_im = gm_im_tab[(m + i_gm)];
			gm = GMb[m + i_gm];
		}
		// Gm constant of NTT
		if (mode == fft_req) {
			x_re = in[frx].f;
			x_im = in[fix].f;
			////////////// iFFT ////////////////
			if (inverse) {
				tmp_re = in[ifr].f;
				tmp_im = in[ifi].f;
				// Add //
				out[frx].f = d_add(x_re, tmp_re);
				out[fix].f = d_add(x_im, tmp_im);
				// Sub //
				x_re = d_add(x_re, -tmp_re);
				x_im = d_add(x_im, -tmp_im);
				// Set the mul variable
				tmp_re = x_re;
				tmp_im = x_im;
			////////////// FFT /////////////////
			} else {
				tmp_re = in[fry].f;
				tmp_im = in[fiy].f;
			}
		} else {
			////////////// iNTT ////////////////
			if (inverse) {
				u = in[frx].u;
				v = in[ifr].u;
				// Add //
				tmp1 = u_add(u, v) - Q;
				tmp1 += Q & -(tmp1 >> 31);
				out[i].u = (u16)tmp1;
				// Sub //
				tmp1 = u_add(u, -v);
				tmp1 += Q & -(tmp1 >> 31);
				w = tmp1;
			} else {
			////////////// NTT /////////////////
				u = in[frx].u;
				v = in[fry].u;
				w = v;
			}
		}
		if (mode == fft_req) {
			// Complex Multiplication
			fpr sub_y = d_add(gm_re, -gm_im);
			fpr add_y = d_add(gm_re, gm_im);
			fpr sub_x = d_add(tmp_re, -tmp_im);
			fpr mul1  = d_mul(tmp_re, sub_y);
			fpr mul2  = d_mul(tmp_im, add_y);
			fpr mul3  = d_mul(gm_im, sub_x);
			tmp_re1   = d_add(mul1, mul3);
			tmp_im1   = d_add(mul2, mul3);
		} else {
			// Montgomery Multiplication
			u32 tmp1, tmp2;
			tmp2 = (u32)w*gm;
			tmp1 = ((tmp2 * Q0I) & 0xFFFF) * Q;
			tmp2 = u_add(tmp2, tmp1) >> 16;
			tmp2 -= Q;
			tmp2 += Q & -(tmp2 >> 31);
			v = tmp2;
		}
		if (mode == fft_req) {
			////////////// iFFT ////////////////
			if (inverse) {
				out[ifr].f = tmp_re1;
				out[ifi].f = tmp_im1;
			} else {
			////////////// FFT /////////////////
				y_re = tmp_re1;
				y_im = tmp_im1;
				// Add //
				out[frx].f = d_add(x_re, y_re);
				out[fix].f = d_add(x_im, y_im);
				// Sub //
				out[fry].f = d_add(x_re, -(y_re));
				out[fiy].f = d_add(x_im, -(y_im));
			}
			if (n == 255) break; // FFT iteration 256 times
		} else {
			if (inverse) {
			////////////// iNTT /////////////////
				out[ifr].u = (u16)v;
			} else {
			////////////// NTT /////////////////
				// Add //
				tmp1 = u_add(u, v) - Q;
				tmp1 += Q & -(tmp1 >> 31);
				out[frx].u = (u16)tmp1;
				// Sub //
				tmp1 = u_add(u, -v);
				tmp1 += Q & -(tmp1 >> 31);
				out[fry].u = (u16)tmp1;
			}
		}
		}
	}
    mode_out.read(mode);
	}
};
/*
class stage{
	public:
	stage(){}
	#pragma hls_design interface
	void CCS_BLOCK(run)(Stream1 line_buf0[1024], Stream1 line_buf1[1024],ac_channel<bool> &mode_in, bool inverse,ac_channel<bool> &mode_out){
		bool mode;
		mode=mode_in.read();
		PE(line_buf0, line_buf1, 1024, 1,mode, inverse);
		PE(line_buf1, line_buf0, 512, 2, mode, inverse);
		PE(line_buf0, line_buf1, 256, 4, mode, inverse);
		PE(line_buf1, line_buf0, 128, 8, mode, inverse);
		PE(line_buf0, line_buf1, 64, 16, mode, inverse);
		PE(line_buf1, line_buf0, 32, 32, mode, inverse);
		PE(line_buf0, line_buf1, 16, 64, mode, inverse);
		PE(line_buf1, line_buf0, 8, 128, mode, inverse);
		PE(line_buf0, line_buf1, 4, 256, mode, inverse);
		PE(line_buf1, line_buf0, 2, 512, mode, inverse);
		mode_out.write(mode);
	}
	
};*/