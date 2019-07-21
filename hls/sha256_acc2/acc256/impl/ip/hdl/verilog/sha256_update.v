// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module sha256_update (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        ctx_data_address0,
        ctx_data_ce0,
        ctx_data_we0,
        ctx_data_d0,
        ctx_data_q0,
        ctx_data_address1,
        ctx_data_ce1,
        ctx_data_q1,
        ctx_datalen_read,
        p_read1,
        p_read2,
        p_read3,
        p_read4,
        p_read5,
        p_read6,
        p_read7,
        p_read8,
        p_read9,
        p_read10,
        data_address0,
        data_ce0,
        data_q0,
        len,
        ap_return_0,
        ap_return_1,
        ap_return_2,
        ap_return_3,
        ap_return_4,
        ap_return_5,
        ap_return_6,
        ap_return_7,
        ap_return_8,
        ap_return_9,
        ap_return_10
);

parameter    ap_ST_fsm_state1 = 5'd1;
parameter    ap_ST_fsm_state2 = 5'd2;
parameter    ap_ST_fsm_state3 = 5'd4;
parameter    ap_ST_fsm_state4 = 5'd8;
parameter    ap_ST_fsm_state5 = 5'd16;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] ctx_data_address0;
output   ctx_data_ce0;
output   ctx_data_we0;
output  [7:0] ctx_data_d0;
input  [7:0] ctx_data_q0;
output  [5:0] ctx_data_address1;
output   ctx_data_ce1;
input  [7:0] ctx_data_q1;
input  [31:0] ctx_datalen_read;
input  [31:0] p_read1;
input  [31:0] p_read2;
input  [31:0] p_read3;
input  [31:0] p_read4;
input  [31:0] p_read5;
input  [31:0] p_read6;
input  [31:0] p_read7;
input  [31:0] p_read8;
input  [31:0] p_read9;
input  [31:0] p_read10;
output  [5:0] data_address0;
output   data_ce0;
input  [7:0] data_q0;
input  [31:0] len;
output  [31:0] ap_return_0;
output  [31:0] ap_return_1;
output  [31:0] ap_return_2;
output  [31:0] ap_return_3;
output  [31:0] ap_return_4;
output  [31:0] ap_return_5;
output  [31:0] ap_return_6;
output  [31:0] ap_return_7;
output  [31:0] ap_return_8;
output  [31:0] ap_return_9;
output  [31:0] ap_return_10;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[5:0] ctx_data_address0;
reg ctx_data_ce0;
reg ctx_data_we0;
reg ctx_data_ce1;
reg data_ce0;

(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [7:0] tmp_7_fu_265_p1;
reg   [7:0] tmp_7_reg_623;
wire   [6:0] i_1_fu_333_p2;
reg   [6:0] i_1_reg_631;
wire    ap_CS_fsm_state2;
wire   [0:0] exitcond_fu_328_p2;
wire   [0:0] tmp_3_fu_421_p2;
reg   [0:0] tmp_3_reg_641;
wire    ap_CS_fsm_state3;
reg   [31:0] ctx_state_7_load_1_reg_645;
wire    ap_CS_fsm_state4;
reg   [31:0] ctx_state_6_load_1_reg_650;
reg   [31:0] ctx_state_5_load_1_reg_655;
reg   [31:0] ctx_state_4_load_1_reg_660;
reg   [31:0] ctx_state_3_load_1_reg_665;
reg   [31:0] ctx_state_2_load_1_reg_670;
reg   [31:0] ctx_state_1_load_1_reg_675;
reg   [31:0] ctx_state_load_1_reg_680;
wire    grp_sha256_transform_fu_208_ap_start;
wire    grp_sha256_transform_fu_208_ap_done;
wire    grp_sha256_transform_fu_208_ap_idle;
wire    grp_sha256_transform_fu_208_ap_ready;
wire   [5:0] grp_sha256_transform_fu_208_data_address0;
wire    grp_sha256_transform_fu_208_data_ce0;
wire   [5:0] grp_sha256_transform_fu_208_data_address1;
wire    grp_sha256_transform_fu_208_data_ce1;
wire   [31:0] grp_sha256_transform_fu_208_ap_return_0;
wire   [31:0] grp_sha256_transform_fu_208_ap_return_1;
wire   [31:0] grp_sha256_transform_fu_208_ap_return_2;
wire   [31:0] grp_sha256_transform_fu_208_ap_return_3;
wire   [31:0] grp_sha256_transform_fu_208_ap_return_4;
wire   [31:0] grp_sha256_transform_fu_208_ap_return_5;
wire   [31:0] grp_sha256_transform_fu_208_ap_return_6;
wire   [31:0] grp_sha256_transform_fu_208_ap_return_7;
reg   [6:0] i_reg_197;
wire    ap_CS_fsm_state5;
reg    ap_block_state5_on_subcall_done;
reg    ap_reg_grp_sha256_transform_fu_208_ap_start;
wire   [63:0] tmp_fu_339_p1;
wire   [63:0] tmp_1_fu_410_p1;
reg   [31:0] ctx_datalen_fu_56;
wire   [31:0] tmp_2_fu_415_p2;
reg   [31:0] ctx_state_7_fu_60;
reg   [31:0] ctx_state_6_fu_64;
reg   [31:0] ctx_state_5_fu_68;
reg   [31:0] ctx_state_4_fu_72;
reg   [31:0] ctx_state_3_fu_76;
reg   [31:0] ctx_state_2_fu_80;
reg   [31:0] ctx_state_1_fu_84;
reg   [31:0] ctx_state_fu_88;
reg   [31:0] ctx_bitlen_1_fu_92;
wire   [31:0] tmp_5_ctx_bitlen_1_fu_481_p3;
reg   [31:0] ctx_bitlen_fu_96;
wire   [31:0] tmp_6_fu_489_p2;
wire   [7:0] i_cast_fu_324_p1;
wire   [0:0] tmp_4_fu_469_p2;
wire   [31:0] tmp_5_fu_475_p2;
reg   [4:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 5'd1;
#0 ap_reg_grp_sha256_transform_fu_208_ap_start = 1'b0;
end

sha256_transform grp_sha256_transform_fu_208(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_sha256_transform_fu_208_ap_start),
    .ap_done(grp_sha256_transform_fu_208_ap_done),
    .ap_idle(grp_sha256_transform_fu_208_ap_idle),
    .ap_ready(grp_sha256_transform_fu_208_ap_ready),
    .ctx_state_0_read(ctx_state_load_1_reg_680),
    .ctx_state_1_read(ctx_state_1_load_1_reg_675),
    .ctx_state_2_read(ctx_state_2_load_1_reg_670),
    .ctx_state_3_read(ctx_state_3_load_1_reg_665),
    .ctx_state_4_read(ctx_state_4_load_1_reg_660),
    .ctx_state_5_read(ctx_state_5_load_1_reg_655),
    .ctx_state_6_read(ctx_state_6_load_1_reg_650),
    .ctx_state_7_read(ctx_state_7_load_1_reg_645),
    .data_address0(grp_sha256_transform_fu_208_data_address0),
    .data_ce0(grp_sha256_transform_fu_208_data_ce0),
    .data_q0(ctx_data_q0),
    .data_address1(grp_sha256_transform_fu_208_data_address1),
    .data_ce1(grp_sha256_transform_fu_208_data_ce1),
    .data_q1(ctx_data_q1),
    .ap_return_0(grp_sha256_transform_fu_208_ap_return_0),
    .ap_return_1(grp_sha256_transform_fu_208_ap_return_1),
    .ap_return_2(grp_sha256_transform_fu_208_ap_return_2),
    .ap_return_3(grp_sha256_transform_fu_208_ap_return_3),
    .ap_return_4(grp_sha256_transform_fu_208_ap_return_4),
    .ap_return_5(grp_sha256_transform_fu_208_ap_return_5),
    .ap_return_6(grp_sha256_transform_fu_208_ap_return_6),
    .ap_return_7(grp_sha256_transform_fu_208_ap_return_7)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_grp_sha256_transform_fu_208_ap_start <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state4)) begin
            ap_reg_grp_sha256_transform_fu_208_ap_start <= 1'b1;
        end else if ((grp_sha256_transform_fu_208_ap_ready == 1'b1)) begin
            ap_reg_grp_sha256_transform_fu_208_ap_start <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_3_reg_641 == 1'd1) & (1'b1 == ap_CS_fsm_state5) & (1'b0 == ap_block_state5_on_subcall_done))) begin
        ctx_bitlen_1_fu_92 <= tmp_5_ctx_bitlen_1_fu_481_p3;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        ctx_bitlen_1_fu_92 <= p_read2;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_3_reg_641 == 1'd1) & (1'b1 == ap_CS_fsm_state5) & (1'b0 == ap_block_state5_on_subcall_done))) begin
        ctx_bitlen_fu_96 <= tmp_6_fu_489_p2;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        ctx_bitlen_fu_96 <= p_read1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ctx_datalen_fu_56 <= 32'd0;
    end else if (((tmp_3_fu_421_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        ctx_datalen_fu_56 <= tmp_2_fu_415_p2;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        ctx_datalen_fu_56 <= ctx_datalen_read;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_3_reg_641 == 1'd1) & (1'b1 == ap_CS_fsm_state5) & (1'b0 == ap_block_state5_on_subcall_done))) begin
        ctx_state_1_fu_84 <= grp_sha256_transform_fu_208_ap_return_1;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        ctx_state_1_fu_84 <= p_read4;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_3_reg_641 == 1'd1) & (1'b1 == ap_CS_fsm_state5) & (1'b0 == ap_block_state5_on_subcall_done))) begin
        ctx_state_2_fu_80 <= grp_sha256_transform_fu_208_ap_return_2;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        ctx_state_2_fu_80 <= p_read5;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_3_reg_641 == 1'd1) & (1'b1 == ap_CS_fsm_state5) & (1'b0 == ap_block_state5_on_subcall_done))) begin
        ctx_state_3_fu_76 <= grp_sha256_transform_fu_208_ap_return_3;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        ctx_state_3_fu_76 <= p_read6;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_3_reg_641 == 1'd1) & (1'b1 == ap_CS_fsm_state5) & (1'b0 == ap_block_state5_on_subcall_done))) begin
        ctx_state_4_fu_72 <= grp_sha256_transform_fu_208_ap_return_4;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        ctx_state_4_fu_72 <= p_read7;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_3_reg_641 == 1'd1) & (1'b1 == ap_CS_fsm_state5) & (1'b0 == ap_block_state5_on_subcall_done))) begin
        ctx_state_5_fu_68 <= grp_sha256_transform_fu_208_ap_return_5;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        ctx_state_5_fu_68 <= p_read8;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_3_reg_641 == 1'd1) & (1'b1 == ap_CS_fsm_state5) & (1'b0 == ap_block_state5_on_subcall_done))) begin
        ctx_state_6_fu_64 <= grp_sha256_transform_fu_208_ap_return_6;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        ctx_state_6_fu_64 <= p_read9;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_3_reg_641 == 1'd1) & (1'b1 == ap_CS_fsm_state5) & (1'b0 == ap_block_state5_on_subcall_done))) begin
        ctx_state_7_fu_60 <= grp_sha256_transform_fu_208_ap_return_7;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        ctx_state_7_fu_60 <= p_read10;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_3_reg_641 == 1'd1) & (1'b1 == ap_CS_fsm_state5) & (1'b0 == ap_block_state5_on_subcall_done))) begin
        ctx_state_fu_88 <= grp_sha256_transform_fu_208_ap_return_0;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        ctx_state_fu_88 <= p_read3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (1'b0 == ap_block_state5_on_subcall_done))) begin
        i_reg_197 <= i_1_reg_631;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_reg_197 <= 7'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ctx_state_1_load_1_reg_675 <= ctx_state_1_fu_84;
        ctx_state_2_load_1_reg_670 <= ctx_state_2_fu_80;
        ctx_state_3_load_1_reg_665 <= ctx_state_3_fu_76;
        ctx_state_4_load_1_reg_660 <= ctx_state_4_fu_72;
        ctx_state_5_load_1_reg_655 <= ctx_state_5_fu_68;
        ctx_state_6_load_1_reg_650 <= ctx_state_6_fu_64;
        ctx_state_7_load_1_reg_645 <= ctx_state_7_fu_60;
        ctx_state_load_1_reg_680 <= ctx_state_fu_88;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_1_reg_631 <= i_1_fu_333_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp_3_reg_641 <= tmp_3_fu_421_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        tmp_7_reg_623 <= tmp_7_fu_265_p1;
    end
end

always @ (*) begin
    if ((((exitcond_fu_328_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_fu_328_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        ctx_data_address0 = tmp_1_fu_410_p1;
    end else if (((tmp_3_reg_641 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        ctx_data_address0 = grp_sha256_transform_fu_208_data_address0;
    end else begin
        ctx_data_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        ctx_data_ce0 = 1'b1;
    end else if (((tmp_3_reg_641 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        ctx_data_ce0 = grp_sha256_transform_fu_208_data_ce0;
    end else begin
        ctx_data_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_3_reg_641 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        ctx_data_ce1 = grp_sha256_transform_fu_208_data_ce1;
    end else begin
        ctx_data_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        ctx_data_we0 = 1'b1;
    end else begin
        ctx_data_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        data_ce0 = 1'b1;
    end else begin
        data_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((exitcond_fu_328_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((tmp_3_fu_421_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (1'b0 == ap_block_state5_on_subcall_done))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

always @ (*) begin
    ap_block_state5_on_subcall_done = ((tmp_3_reg_641 == 1'd1) & (grp_sha256_transform_fu_208_ap_done == 1'b0));
end

assign ap_return_0 = ctx_datalen_fu_56;

assign ap_return_1 = ctx_bitlen_fu_96;

assign ap_return_10 = ctx_state_7_fu_60;

assign ap_return_2 = ctx_bitlen_1_fu_92;

assign ap_return_3 = ctx_state_fu_88;

assign ap_return_4 = ctx_state_1_fu_84;

assign ap_return_5 = ctx_state_2_fu_80;

assign ap_return_6 = ctx_state_3_fu_76;

assign ap_return_7 = ctx_state_4_fu_72;

assign ap_return_8 = ctx_state_5_fu_68;

assign ap_return_9 = ctx_state_6_fu_64;

assign ctx_data_address1 = grp_sha256_transform_fu_208_data_address1;

assign ctx_data_d0 = data_q0;

assign data_address0 = tmp_fu_339_p1;

assign exitcond_fu_328_p2 = ((i_cast_fu_324_p1 == tmp_7_reg_623) ? 1'b1 : 1'b0);

assign grp_sha256_transform_fu_208_ap_start = ap_reg_grp_sha256_transform_fu_208_ap_start;

assign i_1_fu_333_p2 = (i_reg_197 + 7'd1);

assign i_cast_fu_324_p1 = i_reg_197;

assign tmp_1_fu_410_p1 = ctx_datalen_fu_56;

assign tmp_2_fu_415_p2 = (ctx_datalen_fu_56 + 32'd1);

assign tmp_3_fu_421_p2 = ((tmp_2_fu_415_p2 == 32'd64) ? 1'b1 : 1'b0);

assign tmp_4_fu_469_p2 = ((ctx_bitlen_fu_96 > 32'd4294966783) ? 1'b1 : 1'b0);

assign tmp_5_ctx_bitlen_1_fu_481_p3 = ((tmp_4_fu_469_p2[0:0] === 1'b1) ? tmp_5_fu_475_p2 : ctx_bitlen_1_fu_92);

assign tmp_5_fu_475_p2 = (ctx_bitlen_1_fu_92 + 32'd1);

assign tmp_6_fu_489_p2 = (ctx_bitlen_fu_96 + 32'd512);

assign tmp_7_fu_265_p1 = len[7:0];

assign tmp_fu_339_p1 = i_reg_197;

endmodule //sha256_update
