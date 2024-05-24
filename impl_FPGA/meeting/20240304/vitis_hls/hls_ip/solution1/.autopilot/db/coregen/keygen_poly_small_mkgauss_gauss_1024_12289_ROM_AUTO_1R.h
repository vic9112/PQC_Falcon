// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __keygen_poly_small_mkgauss_gauss_1024_12289_ROM_AUTO_1R_H__
#define __keygen_poly_small_mkgauss_gauss_1024_12289_ROM_AUTO_1R_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct keygen_poly_small_mkgauss_gauss_1024_12289_ROM_AUTO_1R_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 63;
  static const unsigned AddressRange = 27;
  static const unsigned AddressWidth = 5;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(keygen_poly_small_mkgauss_gauss_1024_12289_ROM_AUTO_1R_ram) {
        ram[0] = "0b001000111010001001101111101100000101101111100101010101101011000";
        ram[1] = "0b101100100001100010000001111011000111111111101011111100101110100";
        ram[2] = "0b011100010011000111001000001110110000101101110010111010110110111";
        ram[3] = "0b010000010101001011001001110111101010000100001011000111111111001";
        ram[4] = "0b001000100000111110100011010111010010111001110000101011111101011";
        ram[5] = "0b000011111111110000111101100001010010010001000001110101000110111";
        ram[6] = "0b000001101011101101011111100101011001101001101111010010000111001";
        ram[7] = "0b000000101000100110110011000001100000110001000010110110101000010";
        ram[8] = "0b000000001101101011010111110111011101010111110000001011001010101";
        ram[9] = "0b000000000100000111000011010000000001101011011111010100001001100";
        ram[10] = "0b000000000001000110011011101110111001101100111011101101010011100";
        ram[11] = "0b000000000000010000110010010111111000011110111001101110010110100";
        ram[12] = "0b000000000000000011100011101111111001101001111000101011111101001";
        ram[13] = "0b000000000000000000101010111010010010011100011010111011011101011";
        ram[14] = "0b000000000000000000000111001011101001011000011000011001111100101";
        ram[15] = "0b000000000000000000000001000100010011101001111011010011011111110";
        ram[16] = "0b000000000000000000000000001001000000100110111011100011011001011";
        ram[17] = "0b000000000000000000000000000001000011011110100111011001001111010";
        ram[18] = "0b000000000000000000000000000000000111000000010010001111101011110";
        ram[19] = "0b000000000000000000000000000000000000101001010000111110110110000";
        ram[20] = "0b000000000000000000000000000000000000000011010111100010100101000";
        ram[21] = "0b000000000000000000000000000000000000000000001111100101111111011";
        ram[22] = "0b000000000000000000000000000000000000000000000000111111111111100";
        ram[23] = "0b000000000000000000000000000000000000000000000000000011101000110";
        ram[24] = "0b000000000000000000000000000000000000000000000000000000001011110";
        ram[25] = "0b000000000000000000000000000000000000000000000000000000000000100";
        ram[26] = "0b000000000000000000000000000000000000000000000000000000000000000";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(keygen_poly_small_mkgauss_gauss_1024_12289_ROM_AUTO_1R) {


static const unsigned DataWidth = 63;
static const unsigned AddressRange = 27;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


keygen_poly_small_mkgauss_gauss_1024_12289_ROM_AUTO_1R_ram* meminst;


SC_CTOR(keygen_poly_small_mkgauss_gauss_1024_12289_ROM_AUTO_1R) {
meminst = new keygen_poly_small_mkgauss_gauss_1024_12289_ROM_AUTO_1R_ram("keygen_poly_small_mkgauss_gauss_1024_12289_ROM_AUTO_1R_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~keygen_poly_small_mkgauss_gauss_1024_12289_ROM_AUTO_1R() {
    delete meminst;
}


};//endmodule
#endif
