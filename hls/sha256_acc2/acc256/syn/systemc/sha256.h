// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _sha256_HH_
#define _sha256_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "sha256_final.h"
#include "sha256_update.h"
#include "sha256_seg_buf.h"
#include "sha256_sha256ctx_bkb.h"
#include "sha256_AXILiteS_s_axi.h"

namespace ap_rtl {

template<unsigned int C_S_AXI_AXILITES_ADDR_WIDTH = 10,
         unsigned int C_S_AXI_AXILITES_DATA_WIDTH = 32>
struct sha256 : public sc_module {
    // Port declarations 20
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst_n;
    sc_in< sc_logic > s_axi_AXILiteS_AWVALID;
    sc_out< sc_logic > s_axi_AXILiteS_AWREADY;
    sc_in< sc_uint<C_S_AXI_AXILITES_ADDR_WIDTH> > s_axi_AXILiteS_AWADDR;
    sc_in< sc_logic > s_axi_AXILiteS_WVALID;
    sc_out< sc_logic > s_axi_AXILiteS_WREADY;
    sc_in< sc_uint<C_S_AXI_AXILITES_DATA_WIDTH> > s_axi_AXILiteS_WDATA;
    sc_in< sc_uint<C_S_AXI_AXILITES_DATA_WIDTH/8> > s_axi_AXILiteS_WSTRB;
    sc_in< sc_logic > s_axi_AXILiteS_ARVALID;
    sc_out< sc_logic > s_axi_AXILiteS_ARREADY;
    sc_in< sc_uint<C_S_AXI_AXILITES_ADDR_WIDTH> > s_axi_AXILiteS_ARADDR;
    sc_out< sc_logic > s_axi_AXILiteS_RVALID;
    sc_in< sc_logic > s_axi_AXILiteS_RREADY;
    sc_out< sc_uint<C_S_AXI_AXILITES_DATA_WIDTH> > s_axi_AXILiteS_RDATA;
    sc_out< sc_lv<2> > s_axi_AXILiteS_RRESP;
    sc_out< sc_logic > s_axi_AXILiteS_BVALID;
    sc_in< sc_logic > s_axi_AXILiteS_BREADY;
    sc_out< sc_lv<2> > s_axi_AXILiteS_BRESP;
    sc_out< sc_logic > interrupt;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    sha256(sc_module_name name);
    SC_HAS_PROCESS(sha256);

    ~sha256();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    sha256_AXILiteS_s_axi<C_S_AXI_AXILITES_ADDR_WIDTH,C_S_AXI_AXILITES_DATA_WIDTH>* sha256_AXILiteS_s_axi_U;
    sha256_seg_buf* seg_buf_U;
    sha256_sha256ctx_bkb* sha256ctx_data_U;
    sha256_final* grp_sha256_final_fu_260;
    sha256_update* grp_sha256_update_fu_279;
    sc_signal< sc_logic > ap_rst_n_inv;
    sc_signal< sc_logic > ap_start;
    sc_signal< sc_logic > ap_done;
    sc_signal< sc_logic > ap_idle;
    sc_signal< sc_lv<10> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > ap_ready;
    sc_signal< sc_lv<8> > data_address0;
    sc_signal< sc_logic > data_ce0;
    sc_signal< sc_lv<8> > data_q0;
    sc_signal< sc_lv<32> > base_offset;
    sc_signal< sc_lv<32> > bytes;
    sc_signal< sc_lv<5> > digest_address0;
    sc_signal< sc_logic > digest_ce0;
    sc_signal< sc_logic > digest_we0;
    sc_signal< sc_lv<32> > reg_457;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > tmp_s_fu_595_p2;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<1> > exitcond5_fu_621_p2;
    sc_signal< sc_lv<32> > reg_463;
    sc_signal< sc_lv<32> > reg_469;
    sc_signal< sc_lv<32> > reg_475;
    sc_signal< sc_lv<32> > reg_481;
    sc_signal< sc_lv<32> > reg_487;
    sc_signal< sc_lv<32> > reg_493;
    sc_signal< sc_lv<32> > reg_499;
    sc_signal< sc_lv<32> > reg_505;
    sc_signal< sc_lv<32> > reg_511;
    sc_signal< sc_lv<32> > reg_517;
    sc_signal< sc_lv<10> > tmp_fu_523_p1;
    sc_signal< sc_lv<10> > tmp_reg_831;
    sc_signal< sc_lv<32> > n_load_reg_837;
    sc_signal< sc_lv<1> > icmp_fu_611_p2;
    sc_signal< sc_lv<1> > icmp_reg_847;
    sc_signal< sc_lv<10> > tmp_125_fu_617_p1;
    sc_signal< sc_lv<10> > tmp_125_reg_851;
    sc_signal< sc_lv<7> > i_7_fu_627_p2;
    sc_signal< sc_lv<7> > i_7_reg_860;
    sc_signal< sc_lv<6> > i_8_fu_687_p2;
    sc_signal< sc_lv<6> > i_8_reg_873;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<1> > exitcond4_fu_682_p2;
    sc_signal< sc_lv<32> > sha256ctx_datalen_lo_1_reg_883;
    sc_signal< sc_lv<32> > sha256ctx_bitlen_0_1_reg_888;
    sc_signal< sc_lv<32> > sha256ctx_bitlen_1_1_reg_893;
    sc_signal< sc_lv<32> > sha256ctx_state_0_2_2_reg_898;
    sc_signal< sc_lv<32> > sha256ctx_state_1_2_2_reg_903;
    sc_signal< sc_lv<32> > sha256ctx_state_2_2_2_reg_908;
    sc_signal< sc_lv<32> > sha256ctx_state_3_2_2_reg_913;
    sc_signal< sc_lv<32> > sha256ctx_state_4_2_2_reg_918;
    sc_signal< sc_lv<32> > sha256ctx_state_5_2_2_reg_923;
    sc_signal< sc_lv<32> > sha256ctx_state_6_2_2_reg_928;
    sc_signal< sc_lv<32> > sha256ctx_state_7_2_2_reg_933;
    sc_signal< sc_lv<6> > i_fu_728_p2;
    sc_signal< sc_lv<6> > i_reg_941;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<64> > tmp_114_fu_734_p1;
    sc_signal< sc_lv<64> > tmp_114_reg_946;
    sc_signal< sc_lv<1> > exitcond_fu_722_p2;
    sc_signal< sc_lv<6> > seg_buf_address0;
    sc_signal< sc_logic > seg_buf_ce0;
    sc_signal< sc_logic > seg_buf_we0;
    sc_signal< sc_lv<8> > seg_buf_d0;
    sc_signal< sc_lv<8> > seg_buf_q0;
    sc_signal< sc_logic > seg_buf_ce1;
    sc_signal< sc_logic > seg_buf_we1;
    sc_signal< sc_lv<6> > sha256ctx_data_address0;
    sc_signal< sc_logic > sha256ctx_data_ce0;
    sc_signal< sc_logic > sha256ctx_data_we0;
    sc_signal< sc_lv<8> > sha256ctx_data_d0;
    sc_signal< sc_lv<8> > sha256ctx_data_q0;
    sc_signal< sc_lv<6> > sha256ctx_data_address1;
    sc_signal< sc_logic > sha256ctx_data_ce1;
    sc_signal< sc_logic > sha256ctx_data_we1;
    sc_signal< sc_lv<8> > sha256ctx_data_q1;
    sc_signal< sc_logic > grp_sha256_final_fu_260_ap_start;
    sc_signal< sc_logic > grp_sha256_final_fu_260_ap_done;
    sc_signal< sc_logic > grp_sha256_final_fu_260_ap_idle;
    sc_signal< sc_logic > grp_sha256_final_fu_260_ap_ready;
    sc_signal< sc_lv<6> > grp_sha256_final_fu_260_ctx_data_address0;
    sc_signal< sc_logic > grp_sha256_final_fu_260_ctx_data_ce0;
    sc_signal< sc_logic > grp_sha256_final_fu_260_ctx_data_we0;
    sc_signal< sc_lv<8> > grp_sha256_final_fu_260_ctx_data_d0;
    sc_signal< sc_lv<6> > grp_sha256_final_fu_260_ctx_data_address1;
    sc_signal< sc_logic > grp_sha256_final_fu_260_ctx_data_ce1;
    sc_signal< sc_logic > grp_sha256_final_fu_260_ctx_data_we1;
    sc_signal< sc_lv<8> > grp_sha256_final_fu_260_ctx_data_d1;
    sc_signal< sc_lv<6> > grp_sha256_final_fu_260_hash_address0;
    sc_signal< sc_logic > grp_sha256_final_fu_260_hash_ce0;
    sc_signal< sc_logic > grp_sha256_final_fu_260_hash_we0;
    sc_signal< sc_lv<8> > grp_sha256_final_fu_260_hash_d0;
    sc_signal< sc_lv<6> > grp_sha256_final_fu_260_hash_address1;
    sc_signal< sc_logic > grp_sha256_final_fu_260_hash_ce1;
    sc_signal< sc_logic > grp_sha256_final_fu_260_hash_we1;
    sc_signal< sc_lv<8> > grp_sha256_final_fu_260_hash_d1;
    sc_signal< sc_logic > grp_sha256_update_fu_279_ap_start;
    sc_signal< sc_logic > grp_sha256_update_fu_279_ap_done;
    sc_signal< sc_logic > grp_sha256_update_fu_279_ap_idle;
    sc_signal< sc_logic > grp_sha256_update_fu_279_ap_ready;
    sc_signal< sc_lv<6> > grp_sha256_update_fu_279_ctx_data_address0;
    sc_signal< sc_logic > grp_sha256_update_fu_279_ctx_data_ce0;
    sc_signal< sc_logic > grp_sha256_update_fu_279_ctx_data_we0;
    sc_signal< sc_lv<8> > grp_sha256_update_fu_279_ctx_data_d0;
    sc_signal< sc_lv<6> > grp_sha256_update_fu_279_ctx_data_address1;
    sc_signal< sc_logic > grp_sha256_update_fu_279_ctx_data_ce1;
    sc_signal< sc_lv<32> > grp_sha256_update_fu_279_ctx_datalen_read;
    sc_signal< sc_lv<32> > grp_sha256_update_fu_279_p_read1;
    sc_signal< sc_lv<32> > grp_sha256_update_fu_279_p_read2;
    sc_signal< sc_lv<32> > grp_sha256_update_fu_279_p_read3;
    sc_signal< sc_lv<32> > grp_sha256_update_fu_279_p_read4;
    sc_signal< sc_lv<32> > grp_sha256_update_fu_279_p_read5;
    sc_signal< sc_lv<32> > grp_sha256_update_fu_279_p_read6;
    sc_signal< sc_lv<32> > grp_sha256_update_fu_279_p_read7;
    sc_signal< sc_lv<32> > grp_sha256_update_fu_279_p_read8;
    sc_signal< sc_lv<32> > grp_sha256_update_fu_279_p_read9;
    sc_signal< sc_lv<32> > grp_sha256_update_fu_279_p_read10;
    sc_signal< sc_lv<6> > grp_sha256_update_fu_279_data_address0;
    sc_signal< sc_logic > grp_sha256_update_fu_279_data_ce0;
    sc_signal< sc_lv<32> > grp_sha256_update_fu_279_len;
    sc_signal< sc_lv<32> > grp_sha256_update_fu_279_ap_return_0;
    sc_signal< sc_lv<32> > grp_sha256_update_fu_279_ap_return_1;
    sc_signal< sc_lv<32> > grp_sha256_update_fu_279_ap_return_2;
    sc_signal< sc_lv<32> > grp_sha256_update_fu_279_ap_return_3;
    sc_signal< sc_lv<32> > grp_sha256_update_fu_279_ap_return_4;
    sc_signal< sc_lv<32> > grp_sha256_update_fu_279_ap_return_5;
    sc_signal< sc_lv<32> > grp_sha256_update_fu_279_ap_return_6;
    sc_signal< sc_lv<32> > grp_sha256_update_fu_279_ap_return_7;
    sc_signal< sc_lv<32> > grp_sha256_update_fu_279_ap_return_8;
    sc_signal< sc_lv<32> > grp_sha256_update_fu_279_ap_return_9;
    sc_signal< sc_lv<32> > grp_sha256_update_fu_279_ap_return_10;
    sc_signal< sc_lv<7> > i9_reg_225;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<6> > i_1_reg_237;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<6> > i_2_reg_249;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_logic > ap_reg_grp_sha256_final_fu_260_ap_start;
    sc_signal< sc_logic > ap_reg_grp_sha256_update_fu_279_ap_start;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<64> > sum_cast_fu_647_p1;
    sc_signal< sc_lv<64> > tmp_116_fu_662_p1;
    sc_signal< sc_lv<64> > sum2_cast_fu_707_p1;
    sc_signal< sc_lv<64> > tmp_115_fu_717_p1;
    sc_signal< sc_lv<32> > n_fu_94;
    sc_signal< sc_lv<32> > n_1_fu_652_p2;
    sc_signal< sc_lv<32> > sha256ctx_datalen_fu_98;
    sc_signal< bool > ap_block_state5_on_subcall_done;
    sc_signal< sc_lv<32> > sha256ctx_bitlen_0_2_fu_102;
    sc_signal< sc_lv<32> > sha256ctx_bitlen_1_2_fu_106;
    sc_signal< sc_lv<32> > sha256ctx_state_0_2_fu_110;
    sc_signal< sc_lv<32> > sha256ctx_state_1_2_fu_114;
    sc_signal< sc_lv<32> > sha256ctx_state_2_2_fu_118;
    sc_signal< sc_lv<32> > sha256ctx_state_3_2_fu_122;
    sc_signal< sc_lv<32> > sha256ctx_state_4_2_fu_126;
    sc_signal< sc_lv<32> > sha256ctx_state_5_2_fu_130;
    sc_signal< sc_lv<32> > sha256ctx_state_6_2_fu_134;
    sc_signal< sc_lv<32> > sha256ctx_state_7_2_fu_138;
    sc_signal< sc_lv<32> > seg_offset_fu_142;
    sc_signal< sc_lv<32> > seg_offset_1_fu_667_p2;
    sc_signal< sc_lv<26> > tmp_124_fu_601_p4;
    sc_signal< sc_lv<10> > tmp_144_cast_fu_633_p1;
    sc_signal< sc_lv<10> > tmp1_fu_637_p2;
    sc_signal< sc_lv<10> > sum_fu_642_p2;
    sc_signal< sc_lv<32> > i_1_cast_fu_678_p1;
    sc_signal< sc_lv<10> > tmp_145_cast_fu_693_p1;
    sc_signal< sc_lv<10> > tmp2_fu_697_p2;
    sc_signal< sc_lv<10> > sum2_fu_702_p2;
    sc_signal< sc_lv<10> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<10> ap_ST_fsm_state1;
    static const sc_lv<10> ap_ST_fsm_state2;
    static const sc_lv<10> ap_ST_fsm_state3;
    static const sc_lv<10> ap_ST_fsm_state4;
    static const sc_lv<10> ap_ST_fsm_state5;
    static const sc_lv<10> ap_ST_fsm_state6;
    static const sc_lv<10> ap_ST_fsm_state7;
    static const sc_lv<10> ap_ST_fsm_state8;
    static const sc_lv<10> ap_ST_fsm_state9;
    static const sc_lv<10> ap_ST_fsm_state10;
    static const sc_lv<32> ap_const_lv32_0;
    static const int C_S_AXI_DATA_WIDTH;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_40;
    static const bool ap_const_boolean_0;
    static const sc_lv<32> ap_const_lv32_6A09E667;
    static const sc_lv<32> ap_const_lv32_BB67AE85;
    static const sc_lv<32> ap_const_lv32_3C6EF372;
    static const sc_lv<32> ap_const_lv32_A54FF53A;
    static const sc_lv<32> ap_const_lv32_510E527F;
    static const sc_lv<32> ap_const_lv32_9B05688C;
    static const sc_lv<32> ap_const_lv32_1F83D9AB;
    static const sc_lv<32> ap_const_lv32_5BE0CD19;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<26> ap_const_lv26_0;
    static const sc_lv<7> ap_const_lv7_40;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<32> ap_const_lv32_FFFFFFC0;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<6> ap_const_lv6_20;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_block_state5_on_subcall_done();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_rst_n_inv();
    void thread_data_address0();
    void thread_data_ce0();
    void thread_digest_address0();
    void thread_digest_ce0();
    void thread_digest_we0();
    void thread_exitcond4_fu_682_p2();
    void thread_exitcond5_fu_621_p2();
    void thread_exitcond_fu_722_p2();
    void thread_grp_sha256_final_fu_260_ap_start();
    void thread_grp_sha256_update_fu_279_ap_start();
    void thread_grp_sha256_update_fu_279_ctx_datalen_read();
    void thread_grp_sha256_update_fu_279_len();
    void thread_grp_sha256_update_fu_279_p_read1();
    void thread_grp_sha256_update_fu_279_p_read10();
    void thread_grp_sha256_update_fu_279_p_read2();
    void thread_grp_sha256_update_fu_279_p_read3();
    void thread_grp_sha256_update_fu_279_p_read4();
    void thread_grp_sha256_update_fu_279_p_read5();
    void thread_grp_sha256_update_fu_279_p_read6();
    void thread_grp_sha256_update_fu_279_p_read7();
    void thread_grp_sha256_update_fu_279_p_read8();
    void thread_grp_sha256_update_fu_279_p_read9();
    void thread_i_1_cast_fu_678_p1();
    void thread_i_7_fu_627_p2();
    void thread_i_8_fu_687_p2();
    void thread_i_fu_728_p2();
    void thread_icmp_fu_611_p2();
    void thread_n_1_fu_652_p2();
    void thread_seg_buf_address0();
    void thread_seg_buf_ce0();
    void thread_seg_buf_ce1();
    void thread_seg_buf_d0();
    void thread_seg_buf_we0();
    void thread_seg_buf_we1();
    void thread_seg_offset_1_fu_667_p2();
    void thread_sha256ctx_data_address0();
    void thread_sha256ctx_data_address1();
    void thread_sha256ctx_data_ce0();
    void thread_sha256ctx_data_ce1();
    void thread_sha256ctx_data_d0();
    void thread_sha256ctx_data_we0();
    void thread_sha256ctx_data_we1();
    void thread_sum2_cast_fu_707_p1();
    void thread_sum2_fu_702_p2();
    void thread_sum_cast_fu_647_p1();
    void thread_sum_fu_642_p2();
    void thread_tmp1_fu_637_p2();
    void thread_tmp2_fu_697_p2();
    void thread_tmp_114_fu_734_p1();
    void thread_tmp_115_fu_717_p1();
    void thread_tmp_116_fu_662_p1();
    void thread_tmp_124_fu_601_p4();
    void thread_tmp_125_fu_617_p1();
    void thread_tmp_144_cast_fu_633_p1();
    void thread_tmp_145_cast_fu_693_p1();
    void thread_tmp_fu_523_p1();
    void thread_tmp_s_fu_595_p2();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif