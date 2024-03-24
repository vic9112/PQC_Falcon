/*
 * SHAKE implementation.
 *
 * ==========================(LICENSE BEGIN)============================
 *
 * Copyright (c) 2017-2019  Falcon Project
 *
 * Permission is hereby granted, free of charge, to any person obtaining
 * a copy of this software and associated documentation files (the
 * "Software"), to deal in the Software without restriction, including
 * without limitation the rights to use, copy, modify, merge, publish,
 * distribute, sublicense, and/or sell copies of the Software, and to
 * permit persons to whom the Software is furnished to do so, subject to
 * the following conditions:
 *
 * The above copyright notice and this permission notice shall be
 * included in all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
 * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
 * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
 * IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
 * CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
 * TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
 * SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 *
 * ===========================(LICENSE END)=============================
 *
 * @author   Thomas Pornin <thomas.pornin@nccgroup.com>
 */

#include <string.h>

#include "header.h"
#define ROL(a, offset) ((a << offset) ^ (a >> (64-offset)))

/*
 * Round constants.
 */
static const uint64_t RC[] = {
	0x0000000000000001, 0x0000000000008082,
	0x800000000000808A, 0x8000000080008000,
	0x000000000000808B, 0x0000000080000001,
	0x8000000080008081, 0x8000000000008009,
	0x000000000000008A, 0x0000000000000088,
	0x0000000080008009, 0x000000008000000A,
	0x000000008000808B, 0x800000000000008B,
	0x8000000000008089, 0x8000000000008003,
	0x8000000000008002, 0x8000000000000080,
	0x000000000000800A, 0x800000008000000A,
	0x8000000080008081, 0x8000000000008080,
	0x0000000080000001, 0x8000000080008008
};

/*
 * Process the provided state.
 */
void
process_block(uint64_t *state)
{
	//Permute block from fips
	int round;

	    uint64_t Aba, Abe, Abi, Abo, Abu;
	    uint64_t Aga, Age, Agi, Ago, Agu;
	    uint64_t Aka, Ake, Aki, Ako, Aku;
	    uint64_t Ama, Ame, Ami, Amo, Amu;
	    uint64_t Asa, Ase, Asi, Aso, Asu;
	    uint64_t BCa, BCe, BCi, BCo, BCu;
	    uint64_t Da, De, Di, Do, Du;
	    uint64_t Eba, Ebe, Ebi, Ebo, Ebu;
	    uint64_t Ega, Ege, Egi, Ego, Egu;
	    uint64_t Eka, Eke, Eki, Eko, Eku;
	    uint64_t Ema, Eme, Emi, Emo, Emu;
	    uint64_t Esa, Ese, Esi, Eso, Esu;

	    //copyFromState(A, state)
	    Aba = state[ 0];
	    Abe = state[ 1];
	    Abi = state[ 2];
	    Abo = state[ 3];
	    Abu = state[ 4];
	    Aga = state[ 5];
	    Age = state[ 6];
	    Agi = state[ 7];
	    Ago = state[ 8];
	    Agu = state[ 9];
	    Aka = state[10];
	    Ake = state[11];
	    Aki = state[12];
	    Ako = state[13];
	    Aku = state[14];
	    Ama = state[15];
	    Ame = state[16];
	    Ami = state[17];
	    Amo = state[18];
	    Amu = state[19];
	    Asa = state[20];
	    Ase = state[21];
	    Asi = state[22];
	    Aso = state[23];
	    Asu = state[24];

	    for (round = 0; round < 24; round += 1) {
	        //    prepareTheta
	        BCa = Aba^Aga^Aka^Ama^Asa;
	        BCe = Abe^Age^Ake^Ame^Ase;
	        BCi = Abi^Agi^Aki^Ami^Asi;
	        BCo = Abo^Ago^Ako^Amo^Aso;
	        BCu = Abu^Agu^Aku^Amu^Asu;

	        //thetaRhoPiChiIotaPrepareTheta(round  , A, E)
	        Da = BCu^ROL(BCe, 1);
	        De = BCa^ROL(BCi, 1);
	        Di = BCe^ROL(BCo, 1);
	        Do = BCi^ROL(BCu, 1);
	        Du = BCo^ROL(BCa, 1);

	        Aba ^= Da;
	        BCa = Aba;
	        Age ^= De;
	        BCe = ROL(Age, 44);
	        Aki ^= Di;
	        BCi = ROL(Aki, 43);
	        Amo ^= Do;
	        BCo = ROL(Amo, 21);
	        Asu ^= Du;
	        BCu = ROL(Asu, 14);
	        Eba = BCa ^((~BCe)&  BCi );
	        Eba ^= (uint64_t)RC[round];
	        Ebe = BCe ^((~BCi)&  BCo );
	        Ebi = BCi ^((~BCo)&  BCu );
	        Ebo = BCo ^((~BCu)&  BCa );
	        Ebu = BCu ^((~BCa)&  BCe );

	        Abo ^= Do;
	        BCa = ROL(Abo, 28);
	        Agu ^= Du;
	        BCe = ROL(Agu, 20);
	        Aka ^= Da;
	        BCi = ROL(Aka,  3);
	        Ame ^= De;
	        BCo = ROL(Ame, 45);
	        Asi ^= Di;
	        BCu = ROL(Asi, 61);
	        Ega = BCa ^((~BCe)&  BCi );
	        Ege = BCe ^((~BCi)&  BCo );
	        Egi = BCi ^((~BCo)&  BCu );
	        Ego = BCo ^((~BCu)&  BCa );
	        Egu = BCu ^((~BCa)&  BCe );

	        Abe ^= De;
	        BCa = ROL(Abe,  1);
	        Agi ^= Di;
	        BCe = ROL(Agi,  6);
	        Ako ^= Do;
	        BCi = ROL(Ako, 25);
	        Amu ^= Du;
	        BCo = ROL(Amu,  8);
	        Asa ^= Da;
	        BCu = ROL(Asa, 18);
	        Eka = BCa ^((~BCe)&  BCi );
	        Eke = BCe ^((~BCi)&  BCo );
	        Eki = BCi ^((~BCo)&  BCu );
	        Eko = BCo ^((~BCu)&  BCa );
	        Eku = BCu ^((~BCa)&  BCe );

	        Abu ^= Du;
	        BCa = ROL(Abu, 27);
	        Aga ^= Da;
	        BCe = ROL(Aga, 36);
	        Ake ^= De;
	        BCi = ROL(Ake, 10);
	        Ami ^= Di;
	        BCo = ROL(Ami, 15);
	        Aso ^= Do;
	        BCu = ROL(Aso, 56);
	        Ema = BCa ^((~BCe)&  BCi );
	        Eme = BCe ^((~BCi)&  BCo );
	        Emi = BCi ^((~BCo)&  BCu );
	        Emo = BCo ^((~BCu)&  BCa );
	        Emu = BCu ^((~BCa)&  BCe );

	        Abi ^= Di;
	        BCa = ROL(Abi, 62);
	        Ago ^= Do;
	        BCe = ROL(Ago, 55);
	        Aku ^= Du;
	        BCi = ROL(Aku, 39);
	        Ama ^= Da;
	        BCo = ROL(Ama, 41);
	        Ase ^= De;
	        BCu = ROL(Ase,  2);
	        Esa = BCa ^((~BCe)&  BCi );
	        Ese = BCe ^((~BCi)&  BCo );
	        Esi = BCi ^((~BCo)&  BCu );
	        Eso = BCo ^((~BCu)&  BCa );
	        Esu = BCu ^((~BCa)&  BCe );


	        //Copy state to "A" so that the loop closes
	        Aba = Eba;
	        Abe = Ebe;
	        Abi = Ebi;
	        Abo = Ebo;
	        Abu = Ebu;
	        Aga = Ega;
	        Age = Ege;
	        Agi = Egi;
	        Ago = Ego;
	        Agu = Egu;
	        Aka = Eka;
	        Ake = Eke;
	        Aki = Eki;
	        Ako = Eko;
	        Aku = Eku;
	        Ama = Ema;
	        Ame = Eme;
	        Ami = Emi;
	        Amo = Emo;
	        Amu = Emu;
	        Asa = Esa;
	        Ase = Ese;
	        Asi = Esi;
	        Aso = Eso;
	        Asu = Esu;

//	        //    prepareTheta
//	        BCa = Eba^Ega^Eka^Ema^Esa;
//	        BCe = Ebe^Ege^Eke^Eme^Ese;
//	        BCi = Ebi^Egi^Eki^Emi^Esi;
//	        BCo = Ebo^Ego^Eko^Emo^Eso;
//	        BCu = Ebu^Egu^Eku^Emu^Esu;
//
//	        //thetaRhoPiChiIotaPrepareTheta(round+1, E, A)
//	        Da = BCu^ROL(BCe, 1);
//	        De = BCa^ROL(BCi, 1);
//	        Di = BCe^ROL(BCo, 1);
//	        Do = BCi^ROL(BCu, 1);
//	        Du = BCo^ROL(BCa, 1);
//
//	        Eba ^= Da;
//	        BCa = Eba;
//	        Ege ^= De;
//	        BCe = ROL(Ege, 44);
//	        Eki ^= Di;
//	        BCi = ROL(Eki, 43);
//	        Emo ^= Do;
//	        BCo = ROL(Emo, 21);
//	        Esu ^= Du;
//	        BCu = ROL(Esu, 14);
//	        Aba = BCa ^((~BCe)&  BCi );
//	        Aba ^= (uint64_t)RC[round+1];
//	        Abe = BCe ^((~BCi)&  BCo );
//	        Abi = BCi ^((~BCo)&  BCu );
//	        Abo = BCo ^((~BCu)&  BCa );
//	        Abu = BCu ^((~BCa)&  BCe );
//
//	        Ebo ^= Do;
//	        BCa = ROL(Ebo, 28);
//	        Egu ^= Du;
//	        BCe = ROL(Egu, 20);
//	        Eka ^= Da;
//	        BCi = ROL(Eka, 3);
//	        Eme ^= De;
//	        BCo = ROL(Eme, 45);
//	        Esi ^= Di;
//	        BCu = ROL(Esi, 61);
//	        Aga = BCa ^((~BCe)&  BCi );
//	        Age = BCe ^((~BCi)&  BCo );
//	        Agi = BCi ^((~BCo)&  BCu );
//	        Ago = BCo ^((~BCu)&  BCa );
//	        Agu = BCu ^((~BCa)&  BCe );
//
//	        Ebe ^= De;
//	        BCa = ROL(Ebe, 1);
//	        Egi ^= Di;
//	        BCe = ROL(Egi, 6);
//	        Eko ^= Do;
//	        BCi = ROL(Eko, 25);
//	        Emu ^= Du;
//	        BCo = ROL(Emu, 8);
//	        Esa ^= Da;
//	        BCu = ROL(Esa, 18);
//	        Aka = BCa ^((~BCe)&  BCi );
//	        Ake = BCe ^((~BCi)&  BCo );
//	        Aki = BCi ^((~BCo)&  BCu );
//	        Ako = BCo ^((~BCu)&  BCa );
//	        Aku = BCu ^((~BCa)&  BCe );
//
//	        Ebu ^= Du;
//	        BCa = ROL(Ebu, 27);
//	        Ega ^= Da;
//	        BCe = ROL(Ega, 36);
//	        Eke ^= De;
//	        BCi = ROL(Eke, 10);
//	        Emi ^= Di;
//	        BCo = ROL(Emi, 15);
//	        Eso ^= Do;
//	        BCu = ROL(Eso, 56);
//	        Ama = BCa ^((~BCe)&  BCi );
//	        Ame = BCe ^((~BCi)&  BCo );
//	        Ami = BCi ^((~BCo)&  BCu );
//	        Amo = BCo ^((~BCu)&  BCa );
//	        Amu = BCu ^((~BCa)&  BCe );
//
//	        Ebi ^= Di;
//	        BCa = ROL(Ebi, 62);
//	        Ego ^= Do;
//	        BCe = ROL(Ego, 55);
//	        Eku ^= Du;
//	        BCi = ROL(Eku, 39);
//	        Ema ^= Da;
//	        BCo = ROL(Ema, 41);
//	        Ese ^= De;
//	        BCu = ROL(Ese, 2);
//	        Asa = BCa ^((~BCe)&  BCi );
//	        Ase = BCe ^((~BCi)&  BCo );
//	        Asi = BCi ^((~BCo)&  BCu );
//	        Aso = BCo ^((~BCu)&  BCa );
//	        Asu = BCu ^((~BCa)&  BCe );
	    }

	    //copyToState(state, A)
	    state[ 0] = Aba;
	    state[ 1] = Abe;
	    state[ 2] = Abi;
	    state[ 3] = Abo;
	    state[ 4] = Abu;
	    state[ 5] = Aga;
	    state[ 6] = Age;
	    state[ 7] = Agi;
	    state[ 8] = Ago;
	    state[ 9] = Agu;
	    state[10] = Aka;
	    state[11] = Ake;
	    state[12] = Aki;
	    state[13] = Ako;
	    state[14] = Aku;
	    state[15] = Ama;
	    state[16] = Ame;
	    state[17] = Ami;
	    state[18] = Amo;
	    state[19] = Amu;
	    state[20] = Asa;
	    state[21] = Ase;
	    state[22] = Asi;
	    state[23] = Aso;
	    state[24] = Asu;


//	uint64_t t0, t1, t2, t3, t4;
//	uint64_t tt0, tt1, tt2, tt3;
//	uint64_t t, kt;
//	uint64_t c0, c1, c2, c3, c4, bnn;
//	int j;
//
//	/*
//	 * Invert some words (alternate internal representation, which
//	 * saves some operations).
//	 */
//	A[ 1] = ~A[ 1];
//	A[ 2] = ~A[ 2];
//	A[ 8] = ~A[ 8];
//	A[12] = ~A[12];
//	A[17] = ~A[17];
//	A[20] = ~A[20];
//
//	/*
//	 * Compute the 24 rounds. This loop is partially unrolled (each
//	 * iteration computes two rounds).
//	 */
//	for (j = 0; j < 24; j += 2) {
//
//		tt0 = A[ 1] ^ A[ 6];
//		tt1 = A[11] ^ A[16];
//		tt0 ^= A[21] ^ tt1;
//		tt0 = (tt0 << 1) | (tt0 >> 63);
//		tt2 = A[ 4] ^ A[ 9];
//		tt3 = A[14] ^ A[19];
//		tt0 ^= A[24];
//		tt2 ^= tt3;
//		t0 = tt0 ^ tt2;
//
//		tt0 = A[ 2] ^ A[ 7];
//		tt1 = A[12] ^ A[17];
//		tt0 ^= A[22] ^ tt1;
//		tt0 = (tt0 << 1) | (tt0 >> 63);
//		tt2 = A[ 0] ^ A[ 5];
//		tt3 = A[10] ^ A[15];
//		tt0 ^= A[20];
//		tt2 ^= tt3;
//		t1 = tt0 ^ tt2;
//
//		tt0 = A[ 3] ^ A[ 8];
//		tt1 = A[13] ^ A[18];
//		tt0 ^= A[23] ^ tt1;
//		tt0 = (tt0 << 1) | (tt0 >> 63);
//		tt2 = A[ 1] ^ A[ 6];
//		tt3 = A[11] ^ A[16];
//		tt0 ^= A[21];
//		tt2 ^= tt3;
//		t2 = tt0 ^ tt2;
//
//		tt0 = A[ 4] ^ A[ 9];
//		tt1 = A[14] ^ A[19];
//		tt0 ^= A[24] ^ tt1;
//		tt0 = (tt0 << 1) | (tt0 >> 63);
//		tt2 = A[ 2] ^ A[ 7];
//		tt3 = A[12] ^ A[17];
//		tt0 ^= A[22];
//		tt2 ^= tt3;
//		t3 = tt0 ^ tt2;
//
//		tt0 = A[ 0] ^ A[ 5];
//		tt1 = A[10] ^ A[15];
//		tt0 ^= A[20] ^ tt1;
//		tt0 = (tt0 << 1) | (tt0 >> 63);
//		tt2 = A[ 3] ^ A[ 8];
//		tt3 = A[13] ^ A[18];
//		tt0 ^= A[23];
//		tt2 ^= tt3;
//		t4 = tt0 ^ tt2;
//
//		A[ 0] = A[ 0] ^ t0;
//		A[ 5] = A[ 5] ^ t0;
//		A[10] = A[10] ^ t0;
//		A[15] = A[15] ^ t0;
//		A[20] = A[20] ^ t0;
//		A[ 1] = A[ 1] ^ t1;
//		A[ 6] = A[ 6] ^ t1;
//		A[11] = A[11] ^ t1;
//		A[16] = A[16] ^ t1;
//		A[21] = A[21] ^ t1;
//		A[ 2] = A[ 2] ^ t2;
//		A[ 7] = A[ 7] ^ t2;
//		A[12] = A[12] ^ t2;
//		A[17] = A[17] ^ t2;
//		A[22] = A[22] ^ t2;
//		A[ 3] = A[ 3] ^ t3;
//		A[ 8] = A[ 8] ^ t3;
//		A[13] = A[13] ^ t3;
//		A[18] = A[18] ^ t3;
//		A[23] = A[23] ^ t3;
//		A[ 4] = A[ 4] ^ t4;
//		A[ 9] = A[ 9] ^ t4;
//		A[14] = A[14] ^ t4;
//		A[19] = A[19] ^ t4;
//		A[24] = A[24] ^ t4;
//		A[ 5] = (A[ 5] << 36) | (A[ 5] >> (64 - 36));
//		A[10] = (A[10] <<  3) | (A[10] >> (64 -  3));
//		A[15] = (A[15] << 41) | (A[15] >> (64 - 41));
//		A[20] = (A[20] << 18) | (A[20] >> (64 - 18));
//		A[ 1] = (A[ 1] <<  1) | (A[ 1] >> (64 -  1));
//		A[ 6] = (A[ 6] << 44) | (A[ 6] >> (64 - 44));
//		A[11] = (A[11] << 10) | (A[11] >> (64 - 10));
//		A[16] = (A[16] << 45) | (A[16] >> (64 - 45));
//		A[21] = (A[21] <<  2) | (A[21] >> (64 - 2));
//		A[ 2] = (A[ 2] << 62) | (A[ 2] >> (64 - 62));
//		A[ 7] = (A[ 7] <<  6) | (A[ 7] >> (64 -  6));
//		A[12] = (A[12] << 43) | (A[12] >> (64 - 43));
//		A[17] = (A[17] << 15) | (A[17] >> (64 - 15));
//		A[22] = (A[22] << 61) | (A[22] >> (64 - 61));
//		A[ 3] = (A[ 3] << 28) | (A[ 3] >> (64 - 28));
//		A[ 8] = (A[ 8] << 55) | (A[ 8] >> (64 - 55));
//		A[13] = (A[13] << 25) | (A[13] >> (64 - 25));
//		A[18] = (A[18] << 21) | (A[18] >> (64 - 21));
//		A[23] = (A[23] << 56) | (A[23] >> (64 - 56));
//		A[ 4] = (A[ 4] << 27) | (A[ 4] >> (64 - 27));
//		A[ 9] = (A[ 9] << 20) | (A[ 9] >> (64 - 20));
//		A[14] = (A[14] << 39) | (A[14] >> (64 - 39));
//		A[19] = (A[19] <<  8) | (A[19] >> (64 -  8));
//		A[24] = (A[24] << 14) | (A[24] >> (64 - 14));
//
//		bnn = ~A[12];
//		kt = A[ 6] | A[12];
//		c0 = A[ 0] ^ kt;
//		kt = bnn | A[18];
//		c1 = A[ 6] ^ kt;
//		kt = A[18] & A[24];
//		c2 = A[12] ^ kt;
//		kt = A[24] | A[ 0];
//		c3 = A[18] ^ kt;
//		kt = A[ 0] & A[ 6];
//		c4 = A[24] ^ kt;
//		A[ 0] = c0;
//		A[ 6] = c1;
//		A[12] = c2;
//		A[18] = c3;
//		A[24] = c4;
//		bnn = ~A[22];
//		kt = A[ 9] | A[10];
//		c0 = A[ 3] ^ kt;
//		kt = A[10] & A[16];
//		c1 = A[ 9] ^ kt;
//		kt = A[16] | bnn;
//		c2 = A[10] ^ kt;
//		kt = A[22] | A[ 3];
//		c3 = A[16] ^ kt;
//		kt = A[ 3] & A[ 9];
//		c4 = A[22] ^ kt;
//		A[ 3] = c0;
//		A[ 9] = c1;
//		A[10] = c2;
//		A[16] = c3;
//		A[22] = c4;
//		bnn = ~A[19];
//		kt = A[ 7] | A[13];
//		c0 = A[ 1] ^ kt;
//		kt = A[13] & A[19];
//		c1 = A[ 7] ^ kt;
//		kt = bnn & A[20];
//		c2 = A[13] ^ kt;
//		kt = A[20] | A[ 1];
//		c3 = bnn ^ kt;
//		kt = A[ 1] & A[ 7];
//		c4 = A[20] ^ kt;
//		A[ 1] = c0;
//		A[ 7] = c1;
//		A[13] = c2;
//		A[19] = c3;
//		A[20] = c4;
//		bnn = ~A[17];
//		kt = A[ 5] & A[11];
//		c0 = A[ 4] ^ kt;
//		kt = A[11] | A[17];
//		c1 = A[ 5] ^ kt;
//		kt = bnn | A[23];
//		c2 = A[11] ^ kt;
//		kt = A[23] & A[ 4];
//		c3 = bnn ^ kt;
//		kt = A[ 4] | A[ 5];
//		c4 = A[23] ^ kt;
//		A[ 4] = c0;
//		A[ 5] = c1;
//		A[11] = c2;
//		A[17] = c3;
//		A[23] = c4;
//		bnn = ~A[ 8];
//		kt = bnn & A[14];
//		c0 = A[ 2] ^ kt;
//		kt = A[14] | A[15];
//		c1 = bnn ^ kt;
//		kt = A[15] & A[21];
//		c2 = A[14] ^ kt;
//		kt = A[21] | A[ 2];
//		c3 = A[15] ^ kt;
//		kt = A[ 2] & A[ 8];
//		c4 = A[21] ^ kt;
//		A[ 2] = c0;
//		A[ 8] = c1;
//		A[14] = c2;
//		A[15] = c3;
//		A[21] = c4;
//		A[ 0] = A[ 0] ^ RC[j + 0];

//		tt0 = A[ 6] ^ A[ 9];
//		tt1 = A[ 7] ^ A[ 5];
//		tt0 ^= A[ 8] ^ tt1;
//		tt0 = (tt0 << 1) | (tt0 >> 63);
//		tt2 = A[24] ^ A[22];
//		tt3 = A[20] ^ A[23];
//		tt0 ^= A[21];
//		tt2 ^= tt3;
//		t0 = tt0 ^ tt2;
//
//		tt0 = A[12] ^ A[10];
//		tt1 = A[13] ^ A[11];
//		tt0 ^= A[14] ^ tt1;
//		tt0 = (tt0 << 1) | (tt0 >> 63);
//		tt2 = A[ 0] ^ A[ 3];
//		tt3 = A[ 1] ^ A[ 4];
//		tt0 ^= A[ 2];
//		tt2 ^= tt3;
//		t1 = tt0 ^ tt2;
//
//		tt0 = A[18] ^ A[16];
//		tt1 = A[19] ^ A[17];
//		tt0 ^= A[15] ^ tt1;
//		tt0 = (tt0 << 1) | (tt0 >> 63);
//		tt2 = A[ 6] ^ A[ 9];
//		tt3 = A[ 7] ^ A[ 5];
//		tt0 ^= A[ 8];
//		tt2 ^= tt3;
//		t2 = tt0 ^ tt2;
//
//		tt0 = A[24] ^ A[22];
//		tt1 = A[20] ^ A[23];
//		tt0 ^= A[21] ^ tt1;
//		tt0 = (tt0 << 1) | (tt0 >> 63);
//		tt2 = A[12] ^ A[10];
//		tt3 = A[13] ^ A[11];
//		tt0 ^= A[14];
//		tt2 ^= tt3;
//		t3 = tt0 ^ tt2;
//
//		tt0 = A[ 0] ^ A[ 3];
//		tt1 = A[ 1] ^ A[ 4];
//		tt0 ^= A[ 2] ^ tt1;
//		tt0 = (tt0 << 1) | (tt0 >> 63);
//		tt2 = A[18] ^ A[16];
//		tt3 = A[19] ^ A[17];
//		tt0 ^= A[15];
//		tt2 ^= tt3;
//		t4 = tt0 ^ tt2;
//
//		A[ 0] = A[ 0] ^ t0;
//		A[ 3] = A[ 3] ^ t0;
//		A[ 1] = A[ 1] ^ t0;
//		A[ 4] = A[ 4] ^ t0;
//		A[ 2] = A[ 2] ^ t0;
//		A[ 6] = A[ 6] ^ t1;
//		A[ 9] = A[ 9] ^ t1;
//		A[ 7] = A[ 7] ^ t1;
//		A[ 5] = A[ 5] ^ t1;
//		A[ 8] = A[ 8] ^ t1;
//		A[12] = A[12] ^ t2;
//		A[10] = A[10] ^ t2;
//		A[13] = A[13] ^ t2;
//		A[11] = A[11] ^ t2;
//		A[14] = A[14] ^ t2;
//		A[18] = A[18] ^ t3;
//		A[16] = A[16] ^ t3;
//		A[19] = A[19] ^ t3;
//		A[17] = A[17] ^ t3;
//		A[15] = A[15] ^ t3;
//		A[24] = A[24] ^ t4;
//		A[22] = A[22] ^ t4;
//		A[20] = A[20] ^ t4;
//		A[23] = A[23] ^ t4;
//		A[21] = A[21] ^ t4;
//		A[ 3] = (A[ 3] << 36) | (A[ 3] >> (64 - 36));
//		A[ 1] = (A[ 1] <<  3) | (A[ 1] >> (64 -  3));
//		A[ 4] = (A[ 4] << 41) | (A[ 4] >> (64 - 41));
//		A[ 2] = (A[ 2] << 18) | (A[ 2] >> (64 - 18));
//		A[ 6] = (A[ 6] <<  1) | (A[ 6] >> (64 -  1));
//		A[ 9] = (A[ 9] << 44) | (A[ 9] >> (64 - 44));
//		A[ 7] = (A[ 7] << 10) | (A[ 7] >> (64 - 10));
//		A[ 5] = (A[ 5] << 45) | (A[ 5] >> (64 - 45));
//		A[ 8] = (A[ 8] <<  2) | (A[ 8] >> (64 - 2));
//		A[12] = (A[12] << 62) | (A[12] >> (64 - 62));
//		A[10] = (A[10] <<  6) | (A[10] >> (64 -  6));
//		A[13] = (A[13] << 43) | (A[13] >> (64 - 43));
//		A[11] = (A[11] << 15) | (A[11] >> (64 - 15));
//		A[14] = (A[14] << 61) | (A[14] >> (64 - 61));
//		A[18] = (A[18] << 28) | (A[18] >> (64 - 28));
//		A[16] = (A[16] << 55) | (A[16] >> (64 - 55));
//		A[19] = (A[19] << 25) | (A[19] >> (64 - 25));
//		A[17] = (A[17] << 21) | (A[17] >> (64 - 21));
//		A[15] = (A[15] << 56) | (A[15] >> (64 - 56));
//		A[24] = (A[24] << 27) | (A[24] >> (64 - 27));
//		A[22] = (A[22] << 20) | (A[22] >> (64 - 20));
//		A[20] = (A[20] << 39) | (A[20] >> (64 - 39));
//		A[23] = (A[23] <<  8) | (A[23] >> (64 -  8));
//		A[21] = (A[21] << 14) | (A[21] >> (64 - 14));
//
//		bnn = ~A[13];
//		kt = A[ 9] | A[13];
//		c0 = A[ 0] ^ kt;
//		kt = bnn | A[17];
//		c1 = A[ 9] ^ kt;
//		kt = A[17] & A[21];
//		c2 = A[13] ^ kt;
//		kt = A[21] | A[ 0];
//		c3 = A[17] ^ kt;
//		kt = A[ 0] & A[ 9];
//		c4 = A[21] ^ kt;
//		A[ 0] = c0;
//		A[ 9] = c1;
//		A[13] = c2;
//		A[17] = c3;
//		A[21] = c4;
//		bnn = ~A[14];
//		kt = A[22] | A[ 1];
//		c0 = A[18] ^ kt;
//		kt = A[ 1] & A[ 5];
//		c1 = A[22] ^ kt;
//		kt = A[ 5] | bnn;
//		c2 = A[ 1] ^ kt;
//		kt = A[14] | A[18];
//		c3 = A[ 5] ^ kt;
//		kt = A[18] & A[22];
//		c4 = A[14] ^ kt;
//		A[18] = c0;
//		A[22] = c1;
//		A[ 1] = c2;
//		A[ 5] = c3;
//		A[14] = c4;
//		bnn = ~A[23];
//		kt = A[10] | A[19];
//		c0 = A[ 6] ^ kt;
//		kt = A[19] & A[23];
//		c1 = A[10] ^ kt;
//		kt = bnn & A[ 2];
//		c2 = A[19] ^ kt;
//		kt = A[ 2] | A[ 6];
//		c3 = bnn ^ kt;
//		kt = A[ 6] & A[10];
//		c4 = A[ 2] ^ kt;
//		A[ 6] = c0;
//		A[10] = c1;
//		A[19] = c2;
//		A[23] = c3;
//		A[ 2] = c4;
//		bnn = ~A[11];
//		kt = A[ 3] & A[ 7];
//		c0 = A[24] ^ kt;
//		kt = A[ 7] | A[11];
//		c1 = A[ 3] ^ kt;
//		kt = bnn | A[15];
//		c2 = A[ 7] ^ kt;
//		kt = A[15] & A[24];
//		c3 = bnn ^ kt;
//		kt = A[24] | A[ 3];
//		c4 = A[15] ^ kt;
//		A[24] = c0;
//		A[ 3] = c1;
//		A[ 7] = c2;
//		A[11] = c3;
//		A[15] = c4;
//		bnn = ~A[16];
//		kt = bnn & A[20];
//		c0 = A[12] ^ kt;
//		kt = A[20] | A[ 4];
//		c1 = bnn ^ kt;
//		kt = A[ 4] & A[ 8];
//		c2 = A[20] ^ kt;
//		kt = A[ 8] | A[12];
//		c3 = A[ 4] ^ kt;
//		kt = A[12] & A[16];
//		c4 = A[ 8] ^ kt;
//		A[12] = c0;
//		A[16] = c1;
//		A[20] = c2;
//		A[ 4] = c3;
//		A[ 8] = c4;
//		A[ 0] = A[ 0] ^ RC[j + 1];
//		t = A[ 5];
//		A[ 5] = A[18];
//		A[18] = A[11];
//		A[11] = A[10];
//		A[10] = A[ 6];
//		A[ 6] = A[22];
//		A[22] = A[20];
//		A[20] = A[12];
//		A[12] = A[19];
//		A[19] = A[15];
//		A[15] = A[24];
//		A[24] = A[ 8];
//		A[ 8] = t;
//		t = A[ 1];
//		A[ 1] = A[ 9];
//		A[ 9] = A[14];
//		A[14] = A[ 2];
//		A[ 2] = A[13];
//		A[13] = A[23];
//		A[23] = A[ 4];
//		A[ 4] = A[21];
//		A[21] = A[16];
//		A[16] = A[ 3];
//		A[ 3] = A[17];
//		A[17] = A[ 7];
//		A[ 7] = t;
//	}
//
//	/*
//	 * Invert some words back to normal representation.
//	 */
//	A[ 1] = ~A[ 1];
//	A[ 2] = ~A[ 2];
//	A[ 8] = ~A[ 8];
//	A[12] = ~A[12];
//	A[17] = ~A[17];
//	A[20] = ~A[20];
}


/* see inner.h */
void
i_shake256_init(inner_shake256_context *sc)
{
	sc->dptr = 0;

	/*
	 * Representation of an all-ones uint64_t is the same regardless
	 * of local endianness.
	 */
	memset(sc->st.A, 0, sizeof sc->st.A);
}

/* see inner.h */
void
i_shake256_inject(inner_shake256_context *sc, const uint8_t *in, size_t len)
{
	size_t dptr;

	dptr = (size_t)sc->dptr;
	while (len > 0) {
		size_t clen, u;

		clen = 136 - dptr;
		if (clen > len) {
			clen = len;
		}
		for (u = 0; u < clen; u ++) {
			size_t v;

			v = u + dptr;
			sc->st.A[v >> 3] ^= (uint64_t)in[u] << ((v & 7) << 3);
		}
		dptr += clen;
		in += clen;
		len -= clen;
		if (dptr == 136) {
			process_block(sc->st.A);
			dptr = 0;
		}
	}
	sc->dptr = dptr;
}

/* see falcon.h */
void
i_shake256_flip(inner_shake256_context *sc)
{
	/*
	 * We apply padding and pre-XOR the value into the state. We
	 * set dptr to the end of the buffer, so that first call to
	 * shake_extract() will process the block.
	 */
	unsigned v;

	v = sc->dptr;
	sc->st.A[v >> 3] ^= (uint64_t)0x1F << ((v & 7) << 3);
	sc->st.A[16] ^= (uint64_t)0x80 << 56;
	sc->dptr = 136;
}

/* see falcon.h */
void
i_shake256_extract(inner_shake256_context *sc, uint8_t *out, size_t len)
{
	size_t dptr;

	dptr = (size_t)sc->dptr;
	while (len > 0) {
		#pragma HLS loop_tripcount min=1 avg=1 max=1
		//i_shake256_extract is called with len = 56 in rng.c
		//a few times with len=2 in common.c
		//and len=8 in keygen.c

		size_t clen;

		if (dptr == 136) {
			process_block(sc->st.A);
			dptr = 0;
		}
		clen = 136 - dptr;
		if (clen > len) {
			clen = len;
		}
		len -= clen;
		while (clen -- > 0) {
			#pragma HLS loop_tripcount min=1 avg=2 max=136
			*out ++ = sc->st.A[dptr >> 3] >> ((dptr & 7) << 3);
			dptr ++;
		}
	}
	sc->dptr = dptr;
}
