-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity keygen_iFFT_1_fpr_p2_tab_ROM_AUTO_1R is 
    generic(
             DataWidth     : integer := 64; 
             AddressWidth     : integer := 4; 
             AddressRange    : integer := 11
    ); 
    port (
          address0      : in std_logic_vector(AddressWidth-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DataWidth-1 downto 0);
          reset     : in std_logic;
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of keygen_iFFT_1_fpr_p2_tab_ROM_AUTO_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "0100000000000000000000000000000000000000000000000000000000000000", 
    1 => "0011111111110000000000000000000000000000000000000000000000000000", 
    2 => "0011111111100000000000000000000000000000000000000000000000000000", 
    3 => "0011111111010000000000000000000000000000000000000000000000000000", 
    4 => "0011111111000000000000000000000000000000000000000000000000000000", 
    5 => "0011111110110000000000000000000000000000000000000000000000000000", 
    6 => "0011111110100000000000000000000000000000000000000000000000000000", 
    7 => "0011111110010000000000000000000000000000000000000000000000000000", 
    8 => "0011111110000000000000000000000000000000000000000000000000000000", 
    9 => "0011111101110000000000000000000000000000000000000000000000000000", 
    10 => "0011111101100000000000000000000000000000000000000000000000000000" );


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

