-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity keygen_poly_small_mkgauss_gauss_1024_12289_ROM_AUTO_1R is 
    generic(
             DataWidth     : integer := 63; 
             AddressWidth     : integer := 5; 
             AddressRange    : integer := 27
    ); 
    port (
          address0      : in std_logic_vector(AddressWidth-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DataWidth-1 downto 0);
          reset     : in std_logic;
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of keygen_poly_small_mkgauss_gauss_1024_12289_ROM_AUTO_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "001000111010001001101111101100000101101111100101010101101011000", 
    1 => "101100100001100010000001111011000111111111101011111100101110100", 
    2 => "011100010011000111001000001110110000101101110010111010110110111", 
    3 => "010000010101001011001001110111101010000100001011000111111111001", 
    4 => "001000100000111110100011010111010010111001110000101011111101011", 
    5 => "000011111111110000111101100001010010010001000001110101000110111", 
    6 => "000001101011101101011111100101011001101001101111010010000111001", 
    7 => "000000101000100110110011000001100000110001000010110110101000010", 
    8 => "000000001101101011010111110111011101010111110000001011001010101", 
    9 => "000000000100000111000011010000000001101011011111010100001001100", 
    10 => "000000000001000110011011101110111001101100111011101101010011100", 
    11 => "000000000000010000110010010111111000011110111001101110010110100", 
    12 => "000000000000000011100011101111111001101001111000101011111101001", 
    13 => "000000000000000000101010111010010010011100011010111011011101011", 
    14 => "000000000000000000000111001011101001011000011000011001111100101", 
    15 => "000000000000000000000001000100010011101001111011010011011111110", 
    16 => "000000000000000000000000001001000000100110111011100011011001011", 
    17 => "000000000000000000000000000001000011011110100111011001001111010", 
    18 => "000000000000000000000000000000000111000000010010001111101011110", 
    19 => "000000000000000000000000000000000000101001010000111110110110000", 
    20 => "000000000000000000000000000000000000000011010111100010100101000", 
    21 => "000000000000000000000000000000000000000000001111100101111111011", 
    22 => "000000000000000000000000000000000000000000000000111111111111100", 
    23 => "000000000000000000000000000000000000000000000000000011101000110", 
    24 => "000000000000000000000000000000000000000000000000000000001011110", 
    25 => "000000000000000000000000000000000000000000000000000000000000100", 
    26 => "000000000000000000000000000000000000000000000000000000000000000" );


begin 


memory_access_guard_0: process (address0) 
begin
      address0_tmp <= address0;
--synthesis translate_off
      if (CONV_INTEGER(address0) > AddressRange-1) then
           address0_tmp <= (others => '0');
      else 
           address0_tmp <= address0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(address0_tmp)); 
        end if;
    end if;
end process;

end rtl;
