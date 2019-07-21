-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.4
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity sha256_update is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ctx_data_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    ctx_data_ce0 : OUT STD_LOGIC;
    ctx_data_we0 : OUT STD_LOGIC;
    ctx_data_d0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    ctx_data_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    ctx_data_address1 : OUT STD_LOGIC_VECTOR (5 downto 0);
    ctx_data_ce1 : OUT STD_LOGIC;
    ctx_data_q1 : IN STD_LOGIC_VECTOR (7 downto 0);
    ctx_datalen_read : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read1 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read2 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read3 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read4 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read5 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read6 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read7 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read8 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read9 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read10 : IN STD_LOGIC_VECTOR (31 downto 0);
    data_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    data_ce0 : OUT STD_LOGIC;
    data_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    len : IN STD_LOGIC_VECTOR (31 downto 0);
    ap_return_0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    ap_return_1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    ap_return_2 : OUT STD_LOGIC_VECTOR (31 downto 0);
    ap_return_3 : OUT STD_LOGIC_VECTOR (31 downto 0);
    ap_return_4 : OUT STD_LOGIC_VECTOR (31 downto 0);
    ap_return_5 : OUT STD_LOGIC_VECTOR (31 downto 0);
    ap_return_6 : OUT STD_LOGIC_VECTOR (31 downto 0);
    ap_return_7 : OUT STD_LOGIC_VECTOR (31 downto 0);
    ap_return_8 : OUT STD_LOGIC_VECTOR (31 downto 0);
    ap_return_9 : OUT STD_LOGIC_VECTOR (31 downto 0);
    ap_return_10 : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of sha256_update is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (4 downto 0) := "00010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (4 downto 0) := "00100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (4 downto 0) := "01000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv7_1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_const_lv32_40 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001000000";
    constant ap_const_lv32_FFFFFDFF : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111111111110111111111";
    constant ap_const_lv32_200 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000001000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal tmp_7_fu_265_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_7_reg_623 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_1_fu_333_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal i_1_reg_631 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal exitcond_fu_328_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_3_fu_421_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_3_reg_641 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal ctx_state_7_load_1_reg_645 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal ctx_state_6_load_1_reg_650 : STD_LOGIC_VECTOR (31 downto 0);
    signal ctx_state_5_load_1_reg_655 : STD_LOGIC_VECTOR (31 downto 0);
    signal ctx_state_4_load_1_reg_660 : STD_LOGIC_VECTOR (31 downto 0);
    signal ctx_state_3_load_1_reg_665 : STD_LOGIC_VECTOR (31 downto 0);
    signal ctx_state_2_load_1_reg_670 : STD_LOGIC_VECTOR (31 downto 0);
    signal ctx_state_1_load_1_reg_675 : STD_LOGIC_VECTOR (31 downto 0);
    signal ctx_state_load_1_reg_680 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_sha256_transform_fu_208_ap_start : STD_LOGIC;
    signal grp_sha256_transform_fu_208_ap_done : STD_LOGIC;
    signal grp_sha256_transform_fu_208_ap_idle : STD_LOGIC;
    signal grp_sha256_transform_fu_208_ap_ready : STD_LOGIC;
    signal grp_sha256_transform_fu_208_data_address0 : STD_LOGIC_VECTOR (5 downto 0);
    signal grp_sha256_transform_fu_208_data_ce0 : STD_LOGIC;
    signal grp_sha256_transform_fu_208_data_address1 : STD_LOGIC_VECTOR (5 downto 0);
    signal grp_sha256_transform_fu_208_data_ce1 : STD_LOGIC;
    signal grp_sha256_transform_fu_208_ap_return_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_sha256_transform_fu_208_ap_return_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_sha256_transform_fu_208_ap_return_2 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_sha256_transform_fu_208_ap_return_3 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_sha256_transform_fu_208_ap_return_4 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_sha256_transform_fu_208_ap_return_5 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_sha256_transform_fu_208_ap_return_6 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_sha256_transform_fu_208_ap_return_7 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reg_197 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal ap_block_state5_on_subcall_done : BOOLEAN;
    signal ap_reg_grp_sha256_transform_fu_208_ap_start : STD_LOGIC := '0';
    signal tmp_fu_339_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_1_fu_410_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ctx_datalen_fu_56 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_2_fu_415_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ctx_state_7_fu_60 : STD_LOGIC_VECTOR (31 downto 0);
    signal ctx_state_6_fu_64 : STD_LOGIC_VECTOR (31 downto 0);
    signal ctx_state_5_fu_68 : STD_LOGIC_VECTOR (31 downto 0);
    signal ctx_state_4_fu_72 : STD_LOGIC_VECTOR (31 downto 0);
    signal ctx_state_3_fu_76 : STD_LOGIC_VECTOR (31 downto 0);
    signal ctx_state_2_fu_80 : STD_LOGIC_VECTOR (31 downto 0);
    signal ctx_state_1_fu_84 : STD_LOGIC_VECTOR (31 downto 0);
    signal ctx_state_fu_88 : STD_LOGIC_VECTOR (31 downto 0);
    signal ctx_bitlen_1_fu_92 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_5_ctx_bitlen_1_fu_481_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal ctx_bitlen_fu_96 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_6_fu_489_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_cast_fu_324_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_4_fu_469_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_5_fu_475_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (4 downto 0);

    component sha256_transform IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ctx_state_0_read : IN STD_LOGIC_VECTOR (31 downto 0);
        ctx_state_1_read : IN STD_LOGIC_VECTOR (31 downto 0);
        ctx_state_2_read : IN STD_LOGIC_VECTOR (31 downto 0);
        ctx_state_3_read : IN STD_LOGIC_VECTOR (31 downto 0);
        ctx_state_4_read : IN STD_LOGIC_VECTOR (31 downto 0);
        ctx_state_5_read : IN STD_LOGIC_VECTOR (31 downto 0);
        ctx_state_6_read : IN STD_LOGIC_VECTOR (31 downto 0);
        ctx_state_7_read : IN STD_LOGIC_VECTOR (31 downto 0);
        data_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
        data_ce0 : OUT STD_LOGIC;
        data_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
        data_address1 : OUT STD_LOGIC_VECTOR (5 downto 0);
        data_ce1 : OUT STD_LOGIC;
        data_q1 : IN STD_LOGIC_VECTOR (7 downto 0);
        ap_return_0 : OUT STD_LOGIC_VECTOR (31 downto 0);
        ap_return_1 : OUT STD_LOGIC_VECTOR (31 downto 0);
        ap_return_2 : OUT STD_LOGIC_VECTOR (31 downto 0);
        ap_return_3 : OUT STD_LOGIC_VECTOR (31 downto 0);
        ap_return_4 : OUT STD_LOGIC_VECTOR (31 downto 0);
        ap_return_5 : OUT STD_LOGIC_VECTOR (31 downto 0);
        ap_return_6 : OUT STD_LOGIC_VECTOR (31 downto 0);
        ap_return_7 : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;



begin
    grp_sha256_transform_fu_208 : component sha256_transform
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_sha256_transform_fu_208_ap_start,
        ap_done => grp_sha256_transform_fu_208_ap_done,
        ap_idle => grp_sha256_transform_fu_208_ap_idle,
        ap_ready => grp_sha256_transform_fu_208_ap_ready,
        ctx_state_0_read => ctx_state_load_1_reg_680,
        ctx_state_1_read => ctx_state_1_load_1_reg_675,
        ctx_state_2_read => ctx_state_2_load_1_reg_670,
        ctx_state_3_read => ctx_state_3_load_1_reg_665,
        ctx_state_4_read => ctx_state_4_load_1_reg_660,
        ctx_state_5_read => ctx_state_5_load_1_reg_655,
        ctx_state_6_read => ctx_state_6_load_1_reg_650,
        ctx_state_7_read => ctx_state_7_load_1_reg_645,
        data_address0 => grp_sha256_transform_fu_208_data_address0,
        data_ce0 => grp_sha256_transform_fu_208_data_ce0,
        data_q0 => ctx_data_q0,
        data_address1 => grp_sha256_transform_fu_208_data_address1,
        data_ce1 => grp_sha256_transform_fu_208_data_ce1,
        data_q1 => ctx_data_q1,
        ap_return_0 => grp_sha256_transform_fu_208_ap_return_0,
        ap_return_1 => grp_sha256_transform_fu_208_ap_return_1,
        ap_return_2 => grp_sha256_transform_fu_208_ap_return_2,
        ap_return_3 => grp_sha256_transform_fu_208_ap_return_3,
        ap_return_4 => grp_sha256_transform_fu_208_ap_return_4,
        ap_return_5 => grp_sha256_transform_fu_208_ap_return_5,
        ap_return_6 => grp_sha256_transform_fu_208_ap_return_6,
        ap_return_7 => grp_sha256_transform_fu_208_ap_return_7);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_reg_grp_sha256_transform_fu_208_ap_start_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_reg_grp_sha256_transform_fu_208_ap_start <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                    ap_reg_grp_sha256_transform_fu_208_ap_start <= ap_const_logic_1;
                elsif ((grp_sha256_transform_fu_208_ap_ready = ap_const_logic_1)) then 
                    ap_reg_grp_sha256_transform_fu_208_ap_start <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    ctx_bitlen_1_fu_92_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_3_reg_641 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5) and (ap_const_boolean_0 = ap_block_state5_on_subcall_done))) then 
                ctx_bitlen_1_fu_92 <= tmp_5_ctx_bitlen_1_fu_481_p3;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                ctx_bitlen_1_fu_92 <= p_read2;
            end if; 
        end if;
    end process;

    ctx_bitlen_fu_96_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_3_reg_641 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5) and (ap_const_boolean_0 = ap_block_state5_on_subcall_done))) then 
                ctx_bitlen_fu_96 <= tmp_6_fu_489_p2;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                ctx_bitlen_fu_96 <= p_read1;
            end if; 
        end if;
    end process;

    ctx_datalen_fu_56_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                ctx_datalen_fu_56 <= ap_const_lv32_0;
            elsif (((tmp_3_fu_421_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                ctx_datalen_fu_56 <= tmp_2_fu_415_p2;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                ctx_datalen_fu_56 <= ctx_datalen_read;
            end if; 
        end if;
    end process;

    ctx_state_1_fu_84_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_3_reg_641 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5) and (ap_const_boolean_0 = ap_block_state5_on_subcall_done))) then 
                ctx_state_1_fu_84 <= grp_sha256_transform_fu_208_ap_return_1;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                ctx_state_1_fu_84 <= p_read4;
            end if; 
        end if;
    end process;

    ctx_state_2_fu_80_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_3_reg_641 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5) and (ap_const_boolean_0 = ap_block_state5_on_subcall_done))) then 
                ctx_state_2_fu_80 <= grp_sha256_transform_fu_208_ap_return_2;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                ctx_state_2_fu_80 <= p_read5;
            end if; 
        end if;
    end process;

    ctx_state_3_fu_76_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_3_reg_641 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5) and (ap_const_boolean_0 = ap_block_state5_on_subcall_done))) then 
                ctx_state_3_fu_76 <= grp_sha256_transform_fu_208_ap_return_3;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                ctx_state_3_fu_76 <= p_read6;
            end if; 
        end if;
    end process;

    ctx_state_4_fu_72_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_3_reg_641 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5) and (ap_const_boolean_0 = ap_block_state5_on_subcall_done))) then 
                ctx_state_4_fu_72 <= grp_sha256_transform_fu_208_ap_return_4;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                ctx_state_4_fu_72 <= p_read7;
            end if; 
        end if;
    end process;

    ctx_state_5_fu_68_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_3_reg_641 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5) and (ap_const_boolean_0 = ap_block_state5_on_subcall_done))) then 
                ctx_state_5_fu_68 <= grp_sha256_transform_fu_208_ap_return_5;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                ctx_state_5_fu_68 <= p_read8;
            end if; 
        end if;
    end process;

    ctx_state_6_fu_64_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_3_reg_641 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5) and (ap_const_boolean_0 = ap_block_state5_on_subcall_done))) then 
                ctx_state_6_fu_64 <= grp_sha256_transform_fu_208_ap_return_6;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                ctx_state_6_fu_64 <= p_read9;
            end if; 
        end if;
    end process;

    ctx_state_7_fu_60_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_3_reg_641 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5) and (ap_const_boolean_0 = ap_block_state5_on_subcall_done))) then 
                ctx_state_7_fu_60 <= grp_sha256_transform_fu_208_ap_return_7;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                ctx_state_7_fu_60 <= p_read10;
            end if; 
        end if;
    end process;

    ctx_state_fu_88_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_3_reg_641 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5) and (ap_const_boolean_0 = ap_block_state5_on_subcall_done))) then 
                ctx_state_fu_88 <= grp_sha256_transform_fu_208_ap_return_0;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                ctx_state_fu_88 <= p_read3;
            end if; 
        end if;
    end process;

    i_reg_197_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state5) and (ap_const_boolean_0 = ap_block_state5_on_subcall_done))) then 
                i_reg_197 <= i_1_reg_631;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                i_reg_197 <= ap_const_lv7_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                ctx_state_1_load_1_reg_675 <= ctx_state_1_fu_84;
                ctx_state_2_load_1_reg_670 <= ctx_state_2_fu_80;
                ctx_state_3_load_1_reg_665 <= ctx_state_3_fu_76;
                ctx_state_4_load_1_reg_660 <= ctx_state_4_fu_72;
                ctx_state_5_load_1_reg_655 <= ctx_state_5_fu_68;
                ctx_state_6_load_1_reg_650 <= ctx_state_6_fu_64;
                ctx_state_7_load_1_reg_645 <= ctx_state_7_fu_60;
                ctx_state_load_1_reg_680 <= ctx_state_fu_88;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                i_1_reg_631 <= i_1_fu_333_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                tmp_3_reg_641 <= tmp_3_fu_421_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                tmp_7_reg_623 <= tmp_7_fu_265_p1;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, exitcond_fu_328_p2, tmp_3_fu_421_p2, ap_CS_fsm_state3, ap_CS_fsm_state5, ap_block_state5_on_subcall_done)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((exitcond_fu_328_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((tmp_3_fu_421_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state5) and (ap_const_boolean_0 = ap_block_state5_on_subcall_done))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);

    ap_block_state5_on_subcall_done_assign_proc : process(tmp_3_reg_641, grp_sha256_transform_fu_208_ap_done)
    begin
                ap_block_state5_on_subcall_done <= ((tmp_3_reg_641 = ap_const_lv1_1) and (grp_sha256_transform_fu_208_ap_done = ap_const_logic_0));
    end process;


    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2, exitcond_fu_328_p2)
    begin
        if ((((exitcond_fu_328_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2)) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state2, exitcond_fu_328_p2)
    begin
        if (((exitcond_fu_328_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    ap_return_0 <= ctx_datalen_fu_56;
    ap_return_1 <= ctx_bitlen_fu_96;
    ap_return_10 <= ctx_state_7_fu_60;
    ap_return_2 <= ctx_bitlen_1_fu_92;
    ap_return_3 <= ctx_state_fu_88;
    ap_return_4 <= ctx_state_1_fu_84;
    ap_return_5 <= ctx_state_2_fu_80;
    ap_return_6 <= ctx_state_3_fu_76;
    ap_return_7 <= ctx_state_4_fu_72;
    ap_return_8 <= ctx_state_5_fu_68;
    ap_return_9 <= ctx_state_6_fu_64;

    ctx_data_address0_assign_proc : process(tmp_3_reg_641, ap_CS_fsm_state3, grp_sha256_transform_fu_208_data_address0, ap_CS_fsm_state5, tmp_1_fu_410_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            ctx_data_address0 <= tmp_1_fu_410_p1(6 - 1 downto 0);
        elsif (((tmp_3_reg_641 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            ctx_data_address0 <= grp_sha256_transform_fu_208_data_address0;
        else 
            ctx_data_address0 <= "XXXXXX";
        end if; 
    end process;

    ctx_data_address1 <= grp_sha256_transform_fu_208_data_address1;

    ctx_data_ce0_assign_proc : process(tmp_3_reg_641, ap_CS_fsm_state3, grp_sha256_transform_fu_208_data_ce0, ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            ctx_data_ce0 <= ap_const_logic_1;
        elsif (((tmp_3_reg_641 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            ctx_data_ce0 <= grp_sha256_transform_fu_208_data_ce0;
        else 
            ctx_data_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    ctx_data_ce1_assign_proc : process(tmp_3_reg_641, grp_sha256_transform_fu_208_data_ce1, ap_CS_fsm_state5)
    begin
        if (((tmp_3_reg_641 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            ctx_data_ce1 <= grp_sha256_transform_fu_208_data_ce1;
        else 
            ctx_data_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    ctx_data_d0 <= data_q0;

    ctx_data_we0_assign_proc : process(ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            ctx_data_we0 <= ap_const_logic_1;
        else 
            ctx_data_we0 <= ap_const_logic_0;
        end if; 
    end process;

    data_address0 <= tmp_fu_339_p1(6 - 1 downto 0);

    data_ce0_assign_proc : process(ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            data_ce0 <= ap_const_logic_1;
        else 
            data_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    exitcond_fu_328_p2 <= "1" when (i_cast_fu_324_p1 = tmp_7_reg_623) else "0";
    grp_sha256_transform_fu_208_ap_start <= ap_reg_grp_sha256_transform_fu_208_ap_start;
    i_1_fu_333_p2 <= std_logic_vector(unsigned(i_reg_197) + unsigned(ap_const_lv7_1));
    i_cast_fu_324_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_reg_197),8));
    tmp_1_fu_410_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ctx_datalen_fu_56),64));
    tmp_2_fu_415_p2 <= std_logic_vector(unsigned(ctx_datalen_fu_56) + unsigned(ap_const_lv32_1));
    tmp_3_fu_421_p2 <= "1" when (tmp_2_fu_415_p2 = ap_const_lv32_40) else "0";
    tmp_4_fu_469_p2 <= "1" when (unsigned(ctx_bitlen_fu_96) > unsigned(ap_const_lv32_FFFFFDFF)) else "0";
    tmp_5_ctx_bitlen_1_fu_481_p3 <= 
        tmp_5_fu_475_p2 when (tmp_4_fu_469_p2(0) = '1') else 
        ctx_bitlen_1_fu_92;
    tmp_5_fu_475_p2 <= std_logic_vector(unsigned(ctx_bitlen_1_fu_92) + unsigned(ap_const_lv32_1));
    tmp_6_fu_489_p2 <= std_logic_vector(unsigned(ctx_bitlen_fu_96) + unsigned(ap_const_lv32_200));
    tmp_7_fu_265_p1 <= len(8 - 1 downto 0);
    tmp_fu_339_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_reg_197),64));
end behav;
