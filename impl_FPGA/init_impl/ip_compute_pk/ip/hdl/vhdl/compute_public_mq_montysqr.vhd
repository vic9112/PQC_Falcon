-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Version: 2022.1
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity compute_public_mq_montysqr is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    x : IN STD_LOGIC_VECTOR (16 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (16 downto 0);
    ap_ce : IN STD_LOGIC );
end;


architecture behav of compute_public_mq_montysqr is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv17_1CFFF : STD_LOGIC_VECTOR (16 downto 0) := "11100111111111111";
    constant ap_const_lv17_3001 : STD_LOGIC_VECTOR (16 downto 0) := "00011000000000001";
    constant ap_const_lv17_0 : STD_LOGIC_VECTOR (16 downto 0) := "00000000000000000";
    constant ap_const_lv16_2FFF : STD_LOGIC_VECTOR (15 downto 0) := "0010111111111111";
    constant ap_const_lv30_3001 : STD_LOGIC_VECTOR (29 downto 0) := "000000000000000011000000000001";

attribute shreg_extract : string;
    signal sext_ln430_fu_28_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter3 : BOOLEAN;
    signal ap_block_state5_pp0_stage0_iter4 : BOOLEAN;
    signal ap_block_state6_pp0_stage0_iter5 : BOOLEAN;
    signal ap_block_state7_pp0_stage0_iter6 : BOOLEAN;
    signal ap_block_state8_pp0_stage0_iter7 : BOOLEAN;
    signal ap_block_state9_pp0_stage0_iter8 : BOOLEAN;
    signal ap_block_state10_pp0_stage0_iter9 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal grp_fu_79_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal z_reg_107 : STD_LOGIC_VECTOR (31 downto 0);
    signal z_reg_107_pp0_iter4_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal z_reg_107_pp0_iter5_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal z_reg_107_pp0_iter6_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal z_reg_107_pp0_iter7_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal zext_ln406_fu_35_p0 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_fu_86_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal trunc_ln1_fu_38_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_93_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal trunc_ln1_fu_38_p4 : STD_LOGIC_VECTOR (15 downto 0);
    signal zext_ln396_1_fu_47_p1 : STD_LOGIC_VECTOR (16 downto 0);
    signal z_1_fu_51_p2 : STD_LOGIC_VECTOR (16 downto 0);
    signal tmp_fu_57_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln422_fu_65_p3 : STD_LOGIC_VECTOR (16 downto 0);
    signal grp_fu_79_p0 : STD_LOGIC_VECTOR (16 downto 0);
    signal grp_fu_79_p1 : STD_LOGIC_VECTOR (16 downto 0);
    signal grp_fu_86_p0 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_fu_86_p1 : STD_LOGIC_VECTOR (13 downto 0);
    signal grp_fu_93_p0 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_fu_93_p1 : STD_LOGIC_VECTOR (13 downto 0);
    signal z_2_fu_73_p2 : STD_LOGIC_VECTOR (16 downto 0);
    signal grp_fu_79_ce : STD_LOGIC;
    signal grp_fu_86_ce : STD_LOGIC;
    signal grp_fu_93_ce : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;
    signal x_int_reg : STD_LOGIC_VECTOR (16 downto 0);
    signal ap_return_int_reg : STD_LOGIC_VECTOR (16 downto 0);
    signal grp_fu_93_p00 : STD_LOGIC_VECTOR (29 downto 0);

    component compute_public_mul_mul_17s_17s_32_4_0 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (16 downto 0);
        din1 : IN STD_LOGIC_VECTOR (16 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component compute_public_mul_mul_16s_14ns_16_4_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (15 downto 0);
        din1 : IN STD_LOGIC_VECTOR (13 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (15 downto 0) );
    end component;


    component compute_public_mac_muladd_16ns_14ns_32s_32_4_0 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (15 downto 0);
        din1 : IN STD_LOGIC_VECTOR (13 downto 0);
        din2 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;



begin
    mul_mul_17s_17s_32_4_0_U25 : component compute_public_mul_mul_17s_17s_32_4_0
    generic map (
        ID => 1,
        NUM_STAGE => 4,
        din0_WIDTH => 17,
        din1_WIDTH => 17,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_79_p0,
        din1 => grp_fu_79_p1,
        ce => grp_fu_79_ce,
        dout => grp_fu_79_p2);

    mul_mul_16s_14ns_16_4_1_U26 : component compute_public_mul_mul_16s_14ns_16_4_1
    generic map (
        ID => 1,
        NUM_STAGE => 4,
        din0_WIDTH => 16,
        din1_WIDTH => 14,
        dout_WIDTH => 16)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_86_p0,
        din1 => grp_fu_86_p1,
        ce => grp_fu_86_ce,
        dout => grp_fu_86_p2);

    mac_muladd_16ns_14ns_32s_32_4_0_U27 : component compute_public_mac_muladd_16ns_14ns_32s_32_4_0
    generic map (
        ID => 1,
        NUM_STAGE => 4,
        din0_WIDTH => 16,
        din1_WIDTH => 14,
        din2_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_93_p0,
        din1 => grp_fu_93_p1,
        din2 => z_reg_107_pp0_iter7_reg,
        ce => grp_fu_93_ce,
        dout => grp_fu_93_p3);





    ap_ce_reg_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            ap_ce_reg <= ap_ce;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_ce_reg)) then
                ap_return_int_reg <= z_2_fu_73_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_ce)) then
                x_int_reg <= x;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_ce_reg))) then
                z_reg_107 <= grp_fu_79_p2;
                z_reg_107_pp0_iter4_reg <= z_reg_107;
                z_reg_107_pp0_iter5_reg <= z_reg_107_pp0_iter4_reg;
                z_reg_107_pp0_iter6_reg <= z_reg_107_pp0_iter5_reg;
                z_reg_107_pp0_iter7_reg <= z_reg_107_pp0_iter6_reg;
            end if;
        end if;
    end process;
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state10_pp0_stage0_iter9 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage0_iter3 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state5_pp0_stage0_iter4 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state6_pp0_stage0_iter5 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state7_pp0_stage0_iter6 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state8_pp0_stage0_iter7 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state9_pp0_stage0_iter8 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_return_assign_proc : process(z_2_fu_73_p2, ap_ce_reg, ap_return_int_reg)
    begin
        if ((ap_const_logic_0 = ap_ce_reg)) then 
            ap_return <= ap_return_int_reg;
        elsif ((ap_const_logic_1 = ap_ce_reg)) then 
            ap_return <= z_2_fu_73_p2;
        else 
            ap_return <= "XXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    grp_fu_79_ce_assign_proc : process(ap_block_pp0_stage0_11001, ap_ce_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_ce_reg))) then 
            grp_fu_79_ce <= ap_const_logic_1;
        else 
            grp_fu_79_ce <= ap_const_logic_0;
        end if; 
    end process;

    grp_fu_79_p0 <= sext_ln430_fu_28_p1(17 - 1 downto 0);
    grp_fu_79_p1 <= sext_ln430_fu_28_p1(17 - 1 downto 0);

    grp_fu_86_ce_assign_proc : process(ap_block_pp0_stage0_11001, ap_ce_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_ce_reg))) then 
            grp_fu_86_ce <= ap_const_logic_1;
        else 
            grp_fu_86_ce <= ap_const_logic_0;
        end if; 
    end process;

    grp_fu_86_p0 <= grp_fu_79_p2(16 - 1 downto 0);
    grp_fu_86_p1 <= ap_const_lv16_2FFF(14 - 1 downto 0);

    grp_fu_93_ce_assign_proc : process(ap_block_pp0_stage0_11001, ap_ce_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_ce_reg))) then 
            grp_fu_93_ce <= ap_const_logic_1;
        else 
            grp_fu_93_ce <= ap_const_logic_0;
        end if; 
    end process;

    grp_fu_93_p0 <= grp_fu_93_p00(16 - 1 downto 0);
    grp_fu_93_p00 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(zext_ln406_fu_35_p0),30));
    grp_fu_93_p1 <= ap_const_lv30_3001(14 - 1 downto 0);
    select_ln422_fu_65_p3 <= 
        ap_const_lv17_3001 when (tmp_fu_57_p3(0) = '1') else 
        ap_const_lv17_0;
        sext_ln430_fu_28_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(x_int_reg),32));

    tmp_fu_57_p3 <= z_1_fu_51_p2(16 downto 16);
    trunc_ln1_fu_38_p1 <= grp_fu_93_p3;
    trunc_ln1_fu_38_p4 <= trunc_ln1_fu_38_p1(31 downto 16);
    z_1_fu_51_p2 <= std_logic_vector(unsigned(zext_ln396_1_fu_47_p1) + unsigned(ap_const_lv17_1CFFF));
    z_2_fu_73_p2 <= std_logic_vector(unsigned(select_ln422_fu_65_p3) + unsigned(z_1_fu_51_p2));
    zext_ln396_1_fu_47_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(trunc_ln1_fu_38_p4),17));
    zext_ln406_fu_35_p0 <= grp_fu_86_p2;
end behav;