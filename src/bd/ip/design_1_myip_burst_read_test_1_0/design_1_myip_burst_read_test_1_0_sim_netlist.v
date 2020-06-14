// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Sun Jun 14 10:34:26 2020
// Host        : johan-Latitude-E5550 running 64-bit Ubuntu 16.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top design_1_myip_burst_read_test_1_0 -prefix
//               design_1_myip_burst_read_test_1_0_ design_1_myip_burst_read_test_0_1_sim_netlist.v
// Design      : design_1_myip_burst_read_test_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_myip_burst_read_test_1_0_axi_master_burst
   (bus2ip_mstrd_d,
    m00_axi_wvalid,
    m00_axi_araddr,
    m00_axi_arlen,
    m00_axi_arsize,
    m00_axi_arburst,
    m00_axi_arvalid,
    ip2bus_otputs,
    m00_axi_rready,
    m00_axi_bready,
    m00_axi_wstrb,
    m00_axi_bvalid,
    m00_axi_aresetn,
    m00_axi_aclk,
    m00_axi_rdata,
    ip2bus_inputs,
    ip2bus_mst_length,
    ip2bus_mst_addr,
    m00_axi_rvalid,
    m00_axi_rlast,
    m00_axi_rresp,
    m00_axi_wready,
    m00_axi_arready);
  output [31:0]bus2ip_mstrd_d;
  output m00_axi_wvalid;
  output [31:0]m00_axi_araddr;
  output [3:0]m00_axi_arlen;
  output [0:0]m00_axi_arsize;
  output [0:0]m00_axi_arburst;
  output m00_axi_arvalid;
  output [4:0]ip2bus_otputs;
  output m00_axi_rready;
  output m00_axi_bready;
  output [0:0]m00_axi_wstrb;
  input m00_axi_bvalid;
  input m00_axi_aresetn;
  input m00_axi_aclk;
  input [31:0]m00_axi_rdata;
  input [2:0]ip2bus_inputs;
  input [11:0]ip2bus_mst_length;
  input [31:0]ip2bus_mst_addr;
  input m00_axi_rvalid;
  input m00_axi_rlast;
  input [1:0]m00_axi_rresp;
  input m00_axi_wready;
  input m00_axi_arready;

  wire I_CMD_STATUS_MODULE_n_17;
  wire I_CMD_STATUS_MODULE_n_18;
  wire I_CMD_STATUS_MODULE_n_19;
  wire I_CMD_STATUS_MODULE_n_20;
  wire I_CMD_STATUS_MODULE_n_21;
  wire I_CMD_STATUS_MODULE_n_22;
  wire I_CMD_STATUS_MODULE_n_56;
  wire I_CMD_STATUS_MODULE_n_57;
  wire I_CMD_STATUS_MODULE_n_9;
  wire [1:0]\I_MSTR_PCC/p_1_in ;
  wire [11:7]\I_MSTR_PCC/sig_btt_cntr ;
  wire \I_MSTR_PCC/sig_calc_error_pushed ;
  wire I_RD_LLINK_ADAPTER_n_4;
  wire \I_RD_STATUS_CNTLR/sig_rd_sts_tag_reg0 ;
  wire I_RD_WR_CNTRL_MODULE_n_10;
  wire I_RD_WR_CNTRL_MODULE_n_15;
  wire I_RD_WR_CNTRL_MODULE_n_23;
  wire I_RD_WR_CNTRL_MODULE_n_24;
  wire I_RD_WR_CNTRL_MODULE_n_25;
  wire I_RD_WR_CNTRL_MODULE_n_26;
  wire \I_READ_STREAM_SKID_BUF/p_0_in2_in ;
  wire \I_READ_STREAM_SKID_BUF/sig_data_reg_out_en ;
  wire [31:0]bus2ip_mstrd_d;
  wire [2:0]ip2bus_inputs;
  wire [31:0]ip2bus_mst_addr;
  wire [11:0]ip2bus_mst_length;
  wire [4:0]ip2bus_otputs;
  wire m00_axi_aclk;
  wire [31:0]m00_axi_araddr;
  wire [0:0]m00_axi_arburst;
  wire m00_axi_aresetn;
  wire [3:0]m00_axi_arlen;
  wire m00_axi_arready;
  wire [0:0]m00_axi_arsize;
  wire m00_axi_arvalid;
  wire m00_axi_bready;
  wire m00_axi_bvalid;
  wire [31:0]m00_axi_rdata;
  wire m00_axi_rlast;
  wire m00_axi_rready;
  wire [1:0]m00_axi_rresp;
  wire m00_axi_rvalid;
  wire m00_axi_wready;
  wire [0:0]m00_axi_wstrb;
  wire m00_axi_wvalid;
  wire sig_cmd2all_doing_read;
  wire sig_cmd2pcc_cmd_valid;
  wire [31:2]sig_cmd_mst_addr;
  wire [6:0]sig_cmd_mst_length;
  wire sig_cmd_mstrd_req0;
  wire sig_cmd_type_req;
  wire sig_doing_read_reg;
  wire sig_llink2cmd_rd_busy;
  wire sig_llink2rd_allow_addr_req;
  wire sig_llink_busy0;
  wire sig_pcc2all_calc_err;
  wire sig_pcc2data_cmd_valid;
  wire sig_rd2llink_strm_tvalid;
  wire sig_rdwr2llink_int_err;
  wire [4:4]sig_rsc2stat_status;
  wire sig_rsc2stat_status_valid;
  wire sig_rst2cmd_stat_reset;
  wire sig_rst2llink_reset;
  wire sig_rst2rdwr_cntlr_reset;
  wire sig_stat_error;
  wire sig_status_reg_empty;

  design_1_myip_burst_read_test_1_0_axi_master_burst_cmd_status I_CMD_STATUS_MODULE
       (.D(\I_MSTR_PCC/p_1_in ),
        .\GEN_ADDR_32.sig_addr_cntr_lsh_reg[1] ({I_RD_WR_CNTRL_MODULE_n_25,I_RD_WR_CNTRL_MODULE_n_26}),
        .Q(sig_cmd_mst_length),
        .S(I_CMD_STATUS_MODULE_n_9),
        .SR(sig_cmd_mstrd_req0),
        .ip2bus_inputs(ip2bus_inputs[1:0]),
        .ip2bus_inputs_0_sp_1(I_CMD_STATUS_MODULE_n_22),
        .ip2bus_mst_addr(ip2bus_mst_addr),
        .ip2bus_mst_length(ip2bus_mst_length),
        .ip2bus_otputs({ip2bus_otputs[4],ip2bus_otputs[2:0]}),
        .m00_axi_aclk(m00_axi_aclk),
        .out(sig_rst2cmd_stat_reset),
        .\sig_btt_cntr_reg[11] (\I_MSTR_PCC/sig_btt_cntr ),
        .sig_calc_error_pushed(\I_MSTR_PCC/sig_calc_error_pushed ),
        .sig_calc_error_reg_reg(I_RD_WR_CNTRL_MODULE_n_10),
        .sig_cmd2all_doing_read(sig_cmd2all_doing_read),
        .sig_cmd2pcc_cmd_valid(sig_cmd2pcc_cmd_valid),
        .\sig_cmd_mst_addr_reg[31]_0 (sig_cmd_mst_addr),
        .sig_cmd_type_req(sig_cmd_type_req),
        .sig_cmd_type_req_reg_0({I_CMD_STATUS_MODULE_n_17,I_CMD_STATUS_MODULE_n_18,I_CMD_STATUS_MODULE_n_19,I_CMD_STATUS_MODULE_n_20}),
        .sig_cmd_type_req_reg_1(I_CMD_STATUS_MODULE_n_57),
        .sig_doing_read_reg_reg_0(I_CMD_STATUS_MODULE_n_21),
        .sig_doing_read_reg_reg_1(I_CMD_STATUS_MODULE_n_56),
        .sig_doing_read_reg_reg_2(I_RD_WR_CNTRL_MODULE_n_15),
        .sig_error_sh_reg_reg_0(I_RD_WR_CNTRL_MODULE_n_23),
        .sig_llink2cmd_rd_busy(sig_llink2cmd_rd_busy),
        .sig_pcc2all_calc_err(sig_pcc2all_calc_err),
        .sig_pcc2data_cmd_valid(sig_pcc2data_cmd_valid),
        .sig_rd_sts_slverr_reg_reg(sig_rst2rdwr_cntlr_reset),
        .sig_rd_sts_tag_reg0(\I_RD_STATUS_CNTLR/sig_rd_sts_tag_reg0 ),
        .sig_rdwr2llink_int_err(sig_rdwr2llink_int_err),
        .sig_rsc2stat_status(sig_rsc2stat_status),
        .sig_rsc2stat_status_valid(sig_rsc2stat_status_valid),
        .sig_stat_error(sig_stat_error),
        .sig_status_reg_empty(sig_status_reg_empty));
  design_1_myip_burst_read_test_1_0_axi_master_burst_rd_llink I_RD_LLINK_ADAPTER
       (.E(\I_READ_STREAM_SKID_BUF/sig_data_reg_out_en ),
        .ip2bus_inputs(ip2bus_inputs[2]),
        .\ip2bus_inputs[2] (I_RD_LLINK_ADAPTER_n_4),
        .ip2bus_otputs(ip2bus_otputs[3]),
        .\ip2bus_otputs[3] (sig_rd2llink_strm_tvalid),
        .m00_axi_aclk(m00_axi_aclk),
        .out(sig_rst2llink_reset),
        .sig_cmd2all_doing_read(sig_cmd2all_doing_read),
        .\sig_data_reg_out_reg[0] (\I_READ_STREAM_SKID_BUF/p_0_in2_in ),
        .sig_doing_read_reg(sig_doing_read_reg),
        .sig_llink2cmd_rd_busy(sig_llink2cmd_rd_busy),
        .sig_llink2rd_allow_addr_req(sig_llink2rd_allow_addr_req),
        .sig_llink_busy0(sig_llink_busy0),
        .sig_llink_busy_reg_0(I_RD_WR_CNTRL_MODULE_n_24),
        .sig_rdwr2llink_int_err(sig_rdwr2llink_int_err));
  design_1_myip_burst_read_test_1_0_axi_master_burst_rd_wr_cntlr I_RD_WR_CNTRL_MODULE
       (.D(\I_MSTR_PCC/p_1_in ),
        .E(\I_READ_STREAM_SKID_BUF/sig_data_reg_out_en ),
        .\GEN_ADDR_32.sig_addr_cntr_msh_reg[15] (sig_cmd_mst_addr),
        .\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[1] ({I_RD_WR_CNTRL_MODULE_n_25,I_RD_WR_CNTRL_MODULE_n_26}),
        .Q(\I_MSTR_PCC/sig_btt_cntr ),
        .S(I_CMD_STATUS_MODULE_n_9),
        .SR(sig_cmd_mstrd_req0),
        .bus2ip_mstrd_d(bus2ip_mstrd_d),
        .ip2bus_inputs(ip2bus_inputs[2]),
        .ip2bus_otputs(ip2bus_otputs[4]),
        .m00_axi_aclk(m00_axi_aclk),
        .m00_axi_araddr(m00_axi_araddr),
        .m00_axi_arburst(m00_axi_arburst),
        .m00_axi_arlen(m00_axi_arlen),
        .m00_axi_arready(m00_axi_arready),
        .m00_axi_arsize(m00_axi_arsize),
        .m00_axi_arvalid(m00_axi_arvalid),
        .m00_axi_bready(m00_axi_bready),
        .m00_axi_bvalid(m00_axi_bvalid),
        .m00_axi_rdata(m00_axi_rdata),
        .m00_axi_rlast(m00_axi_rlast),
        .m00_axi_rready(m00_axi_rready),
        .m00_axi_rresp(m00_axi_rresp),
        .m00_axi_rvalid(m00_axi_rvalid),
        .m00_axi_wready(m00_axi_wready),
        .m00_axi_wstrb(m00_axi_wstrb),
        .m00_axi_wvalid(m00_axi_wvalid),
        .out(sig_rst2rdwr_cntlr_reset),
        .\sig_btt_cntr_reg[11] ({I_CMD_STATUS_MODULE_n_17,I_CMD_STATUS_MODULE_n_18,I_CMD_STATUS_MODULE_n_19,I_CMD_STATUS_MODULE_n_20}),
        .\sig_btt_cntr_reg[7] (sig_cmd_mst_length),
        .sig_calc_error_pushed(\I_MSTR_PCC/sig_calc_error_pushed ),
        .sig_calc_error_reg_reg(I_CMD_STATUS_MODULE_n_57),
        .sig_cmd2all_doing_read(sig_cmd2all_doing_read),
        .sig_cmd2pcc_cmd_valid(sig_cmd2pcc_cmd_valid),
        .sig_cmd_full_reg_reg(I_RD_WR_CNTRL_MODULE_n_15),
        .sig_cmd_full_reg_reg_0(I_CMD_STATUS_MODULE_n_22),
        .sig_cmd_full_reg_reg_1(sig_rst2cmd_stat_reset),
        .sig_cmd_type_req(sig_cmd_type_req),
        .sig_doing_read_reg(sig_doing_read_reg),
        .sig_error_sh_reg_reg(I_CMD_STATUS_MODULE_n_21),
        .sig_input_reg_empty_reg(I_RD_WR_CNTRL_MODULE_n_10),
        .sig_llink2cmd_rd_busy(sig_llink2cmd_rd_busy),
        .sig_llink2rd_allow_addr_req(sig_llink2rd_allow_addr_req),
        .sig_llink_busy0(sig_llink_busy0),
        .sig_m_valid_dup_reg(\I_READ_STREAM_SKID_BUF/p_0_in2_in ),
        .sig_m_valid_out_reg(sig_rd2llink_strm_tvalid),
        .sig_m_valid_out_reg_0(I_RD_WR_CNTRL_MODULE_n_24),
        .sig_next_cmd_cmplt_reg_reg(I_CMD_STATUS_MODULE_n_56),
        .sig_pcc2all_calc_err(sig_pcc2all_calc_err),
        .sig_pcc2data_cmd_valid(sig_pcc2data_cmd_valid),
        .sig_rd_sts_interr_reg_reg(sig_rsc2stat_status),
        .sig_rd_sts_slverr_reg_reg(I_RD_WR_CNTRL_MODULE_n_23),
        .sig_rd_sts_tag_reg0(\I_RD_STATUS_CNTLR/sig_rd_sts_tag_reg0 ),
        .sig_rsc2stat_status_valid(sig_rsc2stat_status_valid),
        .sig_s_ready_out_reg(I_RD_LLINK_ADAPTER_n_4),
        .sig_stat_error(sig_stat_error),
        .sig_status_reg_empty(sig_status_reg_empty));
  design_1_myip_burst_read_test_1_0_axi_master_burst_reset I_RESET_MODULE
       (.m00_axi_aclk(m00_axi_aclk),
        .m00_axi_aresetn(m00_axi_aresetn),
        .out(sig_rst2cmd_stat_reset),
        .sig_llink_reset_reg_reg_0(sig_rst2llink_reset),
        .sig_rdwr_reset_reg_reg_0(sig_rst2rdwr_cntlr_reset));
endmodule

module design_1_myip_burst_read_test_1_0_axi_master_burst_addr_cntl
   (out,
    sig_addr2stat_cmd_fifo_empty,
    m00_axi_arsize,
    m00_axi_arburst,
    m00_axi_arvalid,
    m00_axi_araddr,
    m00_axi_arlen,
    sig_push_addr_reg1_out,
    m00_axi_aclk,
    sig_pcc2data_calc_error,
    sig_pcc2addr_burst,
    sig_rd_addr_valid_reg_reg_0,
    sig_posted_to_axi_reg_0,
    m00_axi_arready,
    sig_cmd2all_doing_read,
    Q,
    \sig_next_len_reg_reg[3]_0 );
  output out;
  output sig_addr2stat_cmd_fifo_empty;
  output [0:0]m00_axi_arsize;
  output [0:0]m00_axi_arburst;
  output m00_axi_arvalid;
  output [31:0]m00_axi_araddr;
  output [3:0]m00_axi_arlen;
  input sig_push_addr_reg1_out;
  input m00_axi_aclk;
  input sig_pcc2data_calc_error;
  input [0:0]sig_pcc2addr_burst;
  input sig_rd_addr_valid_reg_reg_0;
  input sig_posted_to_axi_reg_0;
  input m00_axi_arready;
  input sig_cmd2all_doing_read;
  input [31:0]Q;
  input [3:0]\sig_next_len_reg_reg[3]_0 ;

  wire [31:0]Q;
  wire m00_axi_aclk;
  wire [31:0]m00_axi_araddr;
  wire [0:0]m00_axi_arburst;
  wire [3:0]m00_axi_arlen;
  wire m00_axi_arready;
  wire [0:0]m00_axi_arsize;
  wire m00_axi_arvalid;
  wire sig_addr2stat_calc_error;
  wire sig_addr2stat_cmd_fifo_empty;
  wire sig_addr_reg_full;
  wire sig_cmd2all_doing_read;
  wire sig_next_addr_reg0;
  wire [3:0]\sig_next_len_reg_reg[3]_0 ;
  wire [0:0]sig_pcc2addr_burst;
  wire sig_pcc2data_calc_error;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_posted_to_axi;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_posted_to_axi_2;
  wire sig_posted_to_axi_reg_0;
  wire sig_push_addr_reg1_out;
  wire sig_rd_addr_valid_reg_reg_0;

  assign out = sig_posted_to_axi;
  FDSE #(
    .INIT(1'b0)) 
    sig_addr_reg_empty_reg
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(1'b0),
        .Q(sig_addr2stat_cmd_fifo_empty),
        .S(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_addr_reg_full_reg
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_push_addr_reg1_out),
        .Q(sig_addr_reg_full),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_calc_error_reg_reg
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_pcc2data_calc_error),
        .Q(sig_addr2stat_calc_error),
        .R(sig_next_addr_reg0));
  LUT5 #(
    .INIT(32'hFFFF0080)) 
    \sig_next_addr_reg[31]_i_1 
       (.I0(m00_axi_arready),
        .I1(sig_cmd2all_doing_read),
        .I2(sig_addr_reg_full),
        .I3(sig_addr2stat_calc_error),
        .I4(sig_posted_to_axi_reg_0),
        .O(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[0] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[0]),
        .Q(m00_axi_araddr[0]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[10] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[10]),
        .Q(m00_axi_araddr[10]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[11] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[11]),
        .Q(m00_axi_araddr[11]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[12] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[12]),
        .Q(m00_axi_araddr[12]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[13] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[13]),
        .Q(m00_axi_araddr[13]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[14] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[14]),
        .Q(m00_axi_araddr[14]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[15] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[15]),
        .Q(m00_axi_araddr[15]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[16] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[16]),
        .Q(m00_axi_araddr[16]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[17] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[17]),
        .Q(m00_axi_araddr[17]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[18] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[18]),
        .Q(m00_axi_araddr[18]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[19] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[19]),
        .Q(m00_axi_araddr[19]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[1] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[1]),
        .Q(m00_axi_araddr[1]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[20] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[20]),
        .Q(m00_axi_araddr[20]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[21] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[21]),
        .Q(m00_axi_araddr[21]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[22] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[22]),
        .Q(m00_axi_araddr[22]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[23] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[23]),
        .Q(m00_axi_araddr[23]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[24] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[24]),
        .Q(m00_axi_araddr[24]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[25] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[25]),
        .Q(m00_axi_araddr[25]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[26] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[26]),
        .Q(m00_axi_araddr[26]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[27] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[27]),
        .Q(m00_axi_araddr[27]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[28] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[28]),
        .Q(m00_axi_araddr[28]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[29] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[29]),
        .Q(m00_axi_araddr[29]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[2] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[2]),
        .Q(m00_axi_araddr[2]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[30] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[30]),
        .Q(m00_axi_araddr[30]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[31] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[31]),
        .Q(m00_axi_araddr[31]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[3] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[3]),
        .Q(m00_axi_araddr[3]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[4] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[4]),
        .Q(m00_axi_araddr[4]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[5] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[5]),
        .Q(m00_axi_araddr[5]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[6] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[6]),
        .Q(m00_axi_araddr[6]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[7] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[7]),
        .Q(m00_axi_araddr[7]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[8] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[8]),
        .Q(m00_axi_araddr[8]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[9] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[9]),
        .Q(m00_axi_araddr[9]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_burst_reg_reg[0] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_pcc2addr_burst),
        .Q(m00_axi_arburst),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_len_reg_reg[0] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(\sig_next_len_reg_reg[3]_0 [0]),
        .Q(m00_axi_arlen[0]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_len_reg_reg[1] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(\sig_next_len_reg_reg[3]_0 [1]),
        .Q(m00_axi_arlen[1]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_len_reg_reg[2] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(\sig_next_len_reg_reg[3]_0 [2]),
        .Q(m00_axi_arlen[2]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_len_reg_reg[3] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(\sig_next_len_reg_reg[3]_0 [3]),
        .Q(m00_axi_arlen[3]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_size_reg_reg[1] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(1'b1),
        .Q(m00_axi_arsize),
        .R(sig_next_addr_reg0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_posted_to_axi_2_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_push_addr_reg1_out),
        .Q(sig_posted_to_axi_2),
        .R(sig_posted_to_axi_reg_0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_posted_to_axi_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_push_addr_reg1_out),
        .Q(sig_posted_to_axi),
        .R(sig_posted_to_axi_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_rd_addr_valid_reg_reg
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_rd_addr_valid_reg_reg_0),
        .Q(m00_axi_arvalid),
        .R(sig_next_addr_reg0));
endmodule

module design_1_myip_burst_read_test_1_0_axi_master_burst_cmd_status
   (sig_cmd2pcc_cmd_valid,
    sig_cmd_type_req,
    sig_cmd2all_doing_read,
    ip2bus_otputs,
    sig_status_reg_empty,
    sig_rdwr2llink_int_err,
    S,
    Q,
    sig_cmd_type_req_reg_0,
    sig_doing_read_reg_reg_0,
    ip2bus_inputs_0_sp_1,
    D,
    \sig_cmd_mst_addr_reg[31]_0 ,
    sig_rd_sts_tag_reg0,
    sig_doing_read_reg_reg_1,
    sig_cmd_type_req_reg_1,
    out,
    m00_axi_aclk,
    SR,
    ip2bus_inputs,
    sig_error_sh_reg_reg_0,
    sig_calc_error_reg_reg,
    \sig_btt_cntr_reg[11] ,
    sig_rsc2stat_status,
    sig_llink2cmd_rd_busy,
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[1] ,
    sig_rd_sts_slverr_reg_reg,
    sig_rsc2stat_status_valid,
    sig_pcc2data_cmd_valid,
    sig_calc_error_pushed,
    sig_doing_read_reg_reg_2,
    sig_pcc2all_calc_err,
    sig_stat_error,
    ip2bus_mst_length,
    ip2bus_mst_addr);
  output sig_cmd2pcc_cmd_valid;
  output sig_cmd_type_req;
  output sig_cmd2all_doing_read;
  output [3:0]ip2bus_otputs;
  output sig_status_reg_empty;
  output sig_rdwr2llink_int_err;
  output [0:0]S;
  output [6:0]Q;
  output [3:0]sig_cmd_type_req_reg_0;
  output sig_doing_read_reg_reg_0;
  output ip2bus_inputs_0_sp_1;
  output [1:0]D;
  output [29:0]\sig_cmd_mst_addr_reg[31]_0 ;
  output sig_rd_sts_tag_reg0;
  output sig_doing_read_reg_reg_1;
  output sig_cmd_type_req_reg_1;
  input out;
  input m00_axi_aclk;
  input [0:0]SR;
  input [1:0]ip2bus_inputs;
  input sig_error_sh_reg_reg_0;
  input sig_calc_error_reg_reg;
  input [4:0]\sig_btt_cntr_reg[11] ;
  input [0:0]sig_rsc2stat_status;
  input sig_llink2cmd_rd_busy;
  input [1:0]\GEN_ADDR_32.sig_addr_cntr_lsh_reg[1] ;
  input sig_rd_sts_slverr_reg_reg;
  input sig_rsc2stat_status_valid;
  input sig_pcc2data_cmd_valid;
  input sig_calc_error_pushed;
  input sig_doing_read_reg_reg_2;
  input sig_pcc2all_calc_err;
  input sig_stat_error;
  input [11:0]ip2bus_mst_length;
  input [31:0]ip2bus_mst_addr;

  wire [1:0]D;
  wire [1:0]\GEN_ADDR_32.sig_addr_cntr_lsh_reg[1] ;
  wire [6:0]Q;
  wire [0:0]S;
  wire [0:0]SR;
  wire [1:0]ip2bus_inputs;
  wire ip2bus_inputs_0_sn_1;
  wire [31:0]ip2bus_mst_addr;
  wire [11:0]ip2bus_mst_length;
  wire [3:0]ip2bus_otputs;
  wire m00_axi_aclk;
  wire out;
  wire [4:0]\sig_btt_cntr_reg[11] ;
  wire sig_calc_error_pushed;
  wire sig_calc_error_reg_i_2_n_0;
  wire sig_calc_error_reg_i_3_n_0;
  wire sig_calc_error_reg_reg;
  wire sig_cmd2all_doing_read;
  wire sig_cmd2pcc_cmd_valid;
  wire sig_cmd_cmplt_reg_i_1_n_0;
  wire sig_cmd_empty_reg;
  wire sig_cmd_empty_reg_i_1_n_0;
  wire [1:0]sig_cmd_mst_addr;
  wire [29:0]\sig_cmd_mst_addr_reg[31]_0 ;
  wire [11:7]sig_cmd_mst_length;
  wire sig_cmd_mstrd_req;
  wire sig_cmd_type_req;
  wire [3:0]sig_cmd_type_req_reg_0;
  wire sig_cmd_type_req_reg_1;
  wire sig_cmdack_reg_i_1_n_0;
  wire sig_doing_read_reg_i_1_n_0;
  wire sig_doing_read_reg_reg_0;
  wire sig_doing_read_reg_reg_1;
  wire sig_doing_read_reg_reg_2;
  wire sig_error_sh_reg_reg_0;
  wire sig_init_reg1;
  wire sig_init_reg2;
  wire sig_int_error_pulse_reg_i_1_n_0;
  wire sig_llink2cmd_rd_busy;
  wire sig_pcc2all_calc_err;
  wire sig_pcc2data_cmd_valid;
  wire sig_push_cmd_reg;
  wire sig_rd_sts_slverr_reg_reg;
  wire sig_rd_sts_tag_reg0;
  wire sig_rdwr2llink_int_err;
  wire [0:0]sig_rsc2stat_status;
  wire sig_rsc2stat_status_valid;
  wire sig_stat_error;
  wire sig_stat_error_reg_i_1_n_0;
  wire sig_status_reg_empty;
  wire sig_status_reg_empty_i_1_n_0;
  wire sig_status_reg_full;
  wire sig_status_reg_full_i_1_n_0;

  assign ip2bus_inputs_0_sp_1 = ip2bus_inputs_0_sn_1;
  LUT4 #(
    .INIT(16'hF808)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[0]_i_1 
       (.I0(sig_cmd_type_req),
        .I1(sig_cmd_mst_addr[0]),
        .I2(sig_calc_error_reg_reg),
        .I3(\GEN_ADDR_32.sig_addr_cntr_lsh_reg[1] [0]),
        .O(D[0]));
  LUT4 #(
    .INIT(16'hF088)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[1]_i_1 
       (.I0(sig_cmd_type_req),
        .I1(sig_cmd_mst_addr[1]),
        .I2(\GEN_ADDR_32.sig_addr_cntr_lsh_reg[1] [1]),
        .I3(sig_calc_error_reg_reg),
        .O(D[1]));
  LUT4 #(
    .INIT(16'h08F8)) 
    \sig_btt_cntr[11]_i_2 
       (.I0(sig_cmd_type_req),
        .I1(sig_cmd_mst_length[11]),
        .I2(sig_calc_error_reg_reg),
        .I3(\sig_btt_cntr_reg[11] [4]),
        .O(sig_cmd_type_req_reg_0[3]));
  LUT4 #(
    .INIT(16'h08F8)) 
    \sig_btt_cntr[11]_i_3 
       (.I0(sig_cmd_type_req),
        .I1(sig_cmd_mst_length[10]),
        .I2(sig_calc_error_reg_reg),
        .I3(\sig_btt_cntr_reg[11] [3]),
        .O(sig_cmd_type_req_reg_0[2]));
  LUT4 #(
    .INIT(16'h08F8)) 
    \sig_btt_cntr[11]_i_4 
       (.I0(sig_cmd_type_req),
        .I1(sig_cmd_mst_length[9]),
        .I2(sig_calc_error_reg_reg),
        .I3(\sig_btt_cntr_reg[11] [2]),
        .O(sig_cmd_type_req_reg_0[1]));
  LUT4 #(
    .INIT(16'h08F8)) 
    \sig_btt_cntr[11]_i_5 
       (.I0(sig_cmd_type_req),
        .I1(sig_cmd_mst_length[8]),
        .I2(sig_calc_error_reg_reg),
        .I3(\sig_btt_cntr_reg[11] [1]),
        .O(sig_cmd_type_req_reg_0[0]));
  LUT4 #(
    .INIT(16'h08F8)) 
    \sig_btt_cntr[7]_i_5 
       (.I0(sig_cmd_type_req),
        .I1(sig_cmd_mst_length[7]),
        .I2(sig_calc_error_reg_reg),
        .I3(\sig_btt_cntr_reg[11] [0]),
        .O(S));
  LUT5 #(
    .INIT(32'hFF8F008F)) 
    sig_calc_error_reg_i_1
       (.I0(sig_calc_error_reg_i_2_n_0),
        .I1(sig_calc_error_reg_i_3_n_0),
        .I2(sig_cmd_type_req),
        .I3(sig_calc_error_reg_reg),
        .I4(sig_pcc2all_calc_err),
        .O(sig_cmd_type_req_reg_1));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    sig_calc_error_reg_i_2
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[5]),
        .I5(Q[4]),
        .O(sig_calc_error_reg_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    sig_calc_error_reg_i_3
       (.I0(sig_cmd_mst_length[8]),
        .I1(sig_cmd_mst_length[9]),
        .I2(Q[6]),
        .I3(sig_cmd_mst_length[7]),
        .I4(sig_cmd_mst_length[11]),
        .I5(sig_cmd_mst_length[10]),
        .O(sig_calc_error_reg_i_3_n_0));
  LUT5 #(
    .INIT(32'h0000002A)) 
    sig_cmd_cmplt_reg_i_1
       (.I0(sig_status_reg_full),
        .I1(sig_cmd2all_doing_read),
        .I2(sig_llink2cmd_rd_busy),
        .I3(ip2bus_otputs[1]),
        .I4(out),
        .O(sig_cmd_cmplt_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_cmd_cmplt_reg_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_cmd_cmplt_reg_i_1_n_0),
        .Q(ip2bus_otputs[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAEAEFFAE)) 
    sig_cmd_empty_reg_i_1
       (.I0(ip2bus_otputs[1]),
        .I1(sig_init_reg1),
        .I2(sig_init_reg2),
        .I3(sig_cmd_empty_reg),
        .I4(ip2bus_inputs[0]),
        .O(sig_cmd_empty_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_cmd_empty_reg_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_cmd_empty_reg_i_1_n_0),
        .Q(sig_cmd_empty_reg),
        .R(out));
  LUT2 #(
    .INIT(4'h8)) 
    sig_cmd_full_reg_i_2
       (.I0(sig_cmd_empty_reg),
        .I1(ip2bus_inputs[0]),
        .O(sig_push_cmd_reg));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h7)) 
    sig_cmd_full_reg_i_3
       (.I0(ip2bus_inputs[0]),
        .I1(sig_cmd_empty_reg),
        .O(ip2bus_inputs_0_sn_1));
  FDRE #(
    .INIT(1'b0)) 
    sig_cmd_full_reg_reg
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(1'b1),
        .Q(sig_cmd2pcc_cmd_valid),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[0] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_addr[0]),
        .Q(sig_cmd_mst_addr[0]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[10] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_addr[10]),
        .Q(\sig_cmd_mst_addr_reg[31]_0 [8]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[11] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_addr[11]),
        .Q(\sig_cmd_mst_addr_reg[31]_0 [9]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[12] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_addr[12]),
        .Q(\sig_cmd_mst_addr_reg[31]_0 [10]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[13] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_addr[13]),
        .Q(\sig_cmd_mst_addr_reg[31]_0 [11]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[14] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_addr[14]),
        .Q(\sig_cmd_mst_addr_reg[31]_0 [12]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[15] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_addr[15]),
        .Q(\sig_cmd_mst_addr_reg[31]_0 [13]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[16] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_addr[16]),
        .Q(\sig_cmd_mst_addr_reg[31]_0 [14]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[17] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_addr[17]),
        .Q(\sig_cmd_mst_addr_reg[31]_0 [15]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[18] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_addr[18]),
        .Q(\sig_cmd_mst_addr_reg[31]_0 [16]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[19] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_addr[19]),
        .Q(\sig_cmd_mst_addr_reg[31]_0 [17]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[1] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_addr[1]),
        .Q(sig_cmd_mst_addr[1]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[20] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_addr[20]),
        .Q(\sig_cmd_mst_addr_reg[31]_0 [18]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[21] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_addr[21]),
        .Q(\sig_cmd_mst_addr_reg[31]_0 [19]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[22] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_addr[22]),
        .Q(\sig_cmd_mst_addr_reg[31]_0 [20]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[23] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_addr[23]),
        .Q(\sig_cmd_mst_addr_reg[31]_0 [21]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[24] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_addr[24]),
        .Q(\sig_cmd_mst_addr_reg[31]_0 [22]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[25] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_addr[25]),
        .Q(\sig_cmd_mst_addr_reg[31]_0 [23]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[26] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_addr[26]),
        .Q(\sig_cmd_mst_addr_reg[31]_0 [24]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[27] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_addr[27]),
        .Q(\sig_cmd_mst_addr_reg[31]_0 [25]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[28] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_addr[28]),
        .Q(\sig_cmd_mst_addr_reg[31]_0 [26]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[29] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_addr[29]),
        .Q(\sig_cmd_mst_addr_reg[31]_0 [27]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[2] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_addr[2]),
        .Q(\sig_cmd_mst_addr_reg[31]_0 [0]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[30] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_addr[30]),
        .Q(\sig_cmd_mst_addr_reg[31]_0 [28]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[31] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_addr[31]),
        .Q(\sig_cmd_mst_addr_reg[31]_0 [29]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[3] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_addr[3]),
        .Q(\sig_cmd_mst_addr_reg[31]_0 [1]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[4] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_addr[4]),
        .Q(\sig_cmd_mst_addr_reg[31]_0 [2]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[5] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_addr[5]),
        .Q(\sig_cmd_mst_addr_reg[31]_0 [3]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[6] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_addr[6]),
        .Q(\sig_cmd_mst_addr_reg[31]_0 [4]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[7] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_addr[7]),
        .Q(\sig_cmd_mst_addr_reg[31]_0 [5]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[8] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_addr[8]),
        .Q(\sig_cmd_mst_addr_reg[31]_0 [6]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[9] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_addr[9]),
        .Q(\sig_cmd_mst_addr_reg[31]_0 [7]),
        .R(SR));
  FDRE \sig_cmd_mst_length_reg[0] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_length[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \sig_cmd_mst_length_reg[10] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_length[10]),
        .Q(sig_cmd_mst_length[10]),
        .R(SR));
  FDRE \sig_cmd_mst_length_reg[11] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_length[11]),
        .Q(sig_cmd_mst_length[11]),
        .R(SR));
  FDRE \sig_cmd_mst_length_reg[1] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_length[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \sig_cmd_mst_length_reg[2] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_length[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \sig_cmd_mst_length_reg[3] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_length[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \sig_cmd_mst_length_reg[4] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_length[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \sig_cmd_mst_length_reg[5] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_length[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \sig_cmd_mst_length_reg[6] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_length[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \sig_cmd_mst_length_reg[7] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_length[7]),
        .Q(sig_cmd_mst_length[7]),
        .R(SR));
  FDRE \sig_cmd_mst_length_reg[8] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_length[8]),
        .Q(sig_cmd_mst_length[8]),
        .R(SR));
  FDRE \sig_cmd_mst_length_reg[9] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_length[9]),
        .Q(sig_cmd_mst_length[9]),
        .R(SR));
  FDRE sig_cmd_mstrd_req_reg
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_inputs[0]),
        .Q(sig_cmd_mstrd_req),
        .R(SR));
  FDRE sig_cmd_type_req_reg
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_inputs[1]),
        .Q(sig_cmd_type_req),
        .R(SR));
  LUT4 #(
    .INIT(16'h1000)) 
    sig_cmdack_reg_i_1
       (.I0(ip2bus_otputs[0]),
        .I1(out),
        .I2(sig_cmd_empty_reg),
        .I3(ip2bus_inputs[0]),
        .O(sig_cmdack_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_cmdack_reg_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_cmdack_reg_i_1_n_0),
        .Q(ip2bus_otputs[0]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h000000000000ABA8)) 
    sig_doing_read_reg_i_1
       (.I0(sig_cmd2all_doing_read),
        .I1(sig_calc_error_pushed),
        .I2(sig_doing_read_reg_reg_2),
        .I3(sig_cmd_mstrd_req),
        .I4(ip2bus_otputs[1]),
        .I5(out),
        .O(sig_doing_read_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_doing_read_reg_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_doing_read_reg_i_1_n_0),
        .Q(sig_cmd2all_doing_read),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    sig_error_sh_reg_i_2
       (.I0(sig_cmd2all_doing_read),
        .I1(sig_rsc2stat_status_valid),
        .I2(sig_status_reg_empty),
        .O(sig_doing_read_reg_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_error_sh_reg_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_error_sh_reg_reg_0),
        .Q(ip2bus_otputs[3]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    sig_init_reg1_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(sig_init_reg1),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    sig_init_reg2_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_init_reg1),
        .Q(sig_init_reg2),
        .R(out));
  LUT6 #(
    .INIT(64'h4540000000000000)) 
    sig_int_error_pulse_reg_i_1
       (.I0(out),
        .I1(sig_rdwr2llink_int_err),
        .I2(sig_doing_read_reg_reg_0),
        .I3(sig_rsc2stat_status),
        .I4(sig_llink2cmd_rd_busy),
        .I5(sig_cmd2all_doing_read),
        .O(sig_int_error_pulse_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_int_error_pulse_reg_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_int_error_pulse_reg_i_1_n_0),
        .Q(sig_rdwr2llink_int_err),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h75FF)) 
    sig_next_cmd_cmplt_reg_i_7
       (.I0(sig_cmd2all_doing_read),
        .I1(sig_status_reg_empty),
        .I2(sig_rsc2stat_status_valid),
        .I3(sig_pcc2data_cmd_valid),
        .O(sig_doing_read_reg_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hEAAA)) 
    sig_rd_sts_reg_full_i_1
       (.I0(sig_rd_sts_slverr_reg_reg),
        .I1(sig_status_reg_empty),
        .I2(sig_rsc2stat_status_valid),
        .I3(sig_cmd2all_doing_read),
        .O(sig_rd_sts_tag_reg0));
  LUT5 #(
    .INIT(32'h000C0A0C)) 
    sig_stat_error_reg_i_1
       (.I0(ip2bus_otputs[2]),
        .I1(sig_stat_error),
        .I2(out),
        .I3(sig_doing_read_reg_reg_0),
        .I4(ip2bus_otputs[1]),
        .O(sig_stat_error_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_stat_error_reg_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_stat_error_reg_i_1_n_0),
        .Q(ip2bus_otputs[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAEAEFFAEFFAEFFAE)) 
    sig_status_reg_empty_i_1
       (.I0(ip2bus_otputs[1]),
        .I1(sig_init_reg1),
        .I2(sig_init_reg2),
        .I3(sig_status_reg_empty),
        .I4(sig_rsc2stat_status_valid),
        .I5(sig_cmd2all_doing_read),
        .O(sig_status_reg_empty_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_status_reg_empty_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_status_reg_empty_i_1_n_0),
        .Q(sig_status_reg_empty),
        .R(out));
  LUT6 #(
    .INIT(64'h3000000032222222)) 
    sig_status_reg_full_i_1
       (.I0(sig_status_reg_full),
        .I1(out),
        .I2(sig_status_reg_empty),
        .I3(sig_rsc2stat_status_valid),
        .I4(sig_cmd2all_doing_read),
        .I5(ip2bus_otputs[1]),
        .O(sig_status_reg_full_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_status_reg_full_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_status_reg_full_i_1_n_0),
        .Q(sig_status_reg_full),
        .R(1'b0));
endmodule

module design_1_myip_burst_read_test_1_0_axi_master_burst_fifo
   (sig_init_reg_reg_0,
    sig_init_reg_reg_1,
    sig_init_reg_reg_2,
    sig_rdwr_reset_reg_reg,
    m00_axi_bready,
    out,
    m00_axi_aclk,
    m00_axi_bvalid,
    sig_s_ready_dup_reg,
    sig_s_ready_dup_reg_0,
    m00_axi_wready,
    sig_m_valid_dup_reg);
  output sig_init_reg_reg_0;
  output sig_init_reg_reg_1;
  output sig_init_reg_reg_2;
  output sig_rdwr_reset_reg_reg;
  output m00_axi_bready;
  input out;
  input m00_axi_aclk;
  input m00_axi_bvalid;
  input sig_s_ready_dup_reg;
  input sig_s_ready_dup_reg_0;
  input m00_axi_wready;
  input sig_m_valid_dup_reg;

  wire \GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/sig_init_reg2 ;
  wire m00_axi_aclk;
  wire m00_axi_bready;
  wire m00_axi_bvalid;
  wire m00_axi_wready;
  wire out;
  wire sig_inhibit_rdy_n;
  wire sig_inhibit_rdy_n_i_1_n_0;
  wire sig_init_done;
  wire sig_init_done_i_1_n_0;
  wire sig_init_reg_reg_0;
  wire sig_init_reg_reg_1;
  wire sig_init_reg_reg_2;
  wire sig_m_valid_dup_reg;
  wire sig_rdwr_reset_reg_reg;
  wire sig_s_ready_dup_reg;
  wire sig_s_ready_dup_reg_0;

  design_1_myip_burst_read_test_1_0_srl_fifo_f \USE_SRL_FIFO.I_SYNC_FIFO 
       (.m00_axi_aclk(m00_axi_aclk),
        .m00_axi_bready(m00_axi_bready),
        .m00_axi_bvalid(m00_axi_bvalid),
        .out(out),
        .sig_inhibit_rdy_n(sig_inhibit_rdy_n));
  LUT2 #(
    .INIT(4'hE)) 
    sig_inhibit_rdy_n_i_1
       (.I0(sig_init_done),
        .I1(sig_inhibit_rdy_n),
        .O(sig_inhibit_rdy_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_inhibit_rdy_n_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_inhibit_rdy_n_i_1_n_0),
        .Q(sig_inhibit_rdy_n),
        .R(out));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    sig_init_done_i_1
       (.I0(out),
        .I1(sig_init_done),
        .I2(sig_init_reg_reg_0),
        .I3(\GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/sig_init_reg2 ),
        .O(sig_init_done_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_init_done_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_init_done_i_1_n_0),
        .Q(sig_init_done),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    sig_init_reg2_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_init_reg_reg_0),
        .Q(\GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/sig_init_reg2 ),
        .S(out));
  FDRE #(
    .INIT(1'b0)) 
    sig_init_reg_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(out),
        .Q(sig_init_reg_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h10)) 
    sig_m_valid_dup_i_1__1
       (.I0(out),
        .I1(sig_init_reg_reg_0),
        .I2(sig_m_valid_dup_reg),
        .O(sig_rdwr_reset_reg_reg));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h32)) 
    sig_s_ready_dup_i_1__0
       (.I0(sig_init_reg_reg_0),
        .I1(out),
        .I2(sig_s_ready_dup_reg),
        .O(sig_init_reg_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h0F0E)) 
    sig_s_ready_dup_i_1__1
       (.I0(sig_init_reg_reg_0),
        .I1(sig_s_ready_dup_reg_0),
        .I2(out),
        .I3(m00_axi_wready),
        .O(sig_init_reg_reg_2));
endmodule

module design_1_myip_burst_read_test_1_0_axi_master_burst_pcc
   (sig_pcc2addr_burst,
    sig_pcc2data_cmd_cmplt,
    sig_pcc2data_calc_error,
    sig_calc_error_reg_reg_0,
    sig_pcc2data_eof,
    sig_pcc2data_sequential,
    sig_pcc2data_cmd_valid,
    sig_calc_error_pushed_reg_0,
    DI,
    Q,
    sig_input_reg_empty_reg_0,
    sig_xfer_calc_err_reg_reg_0,
    SR,
    S,
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[7]_0 ,
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[11]_0 ,
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_0 ,
    sig_cmd_full_reg_reg,
    sig_next_calc_error_reg_reg,
    \sig_btt_cntr_reg[11]_0 ,
    sig_push_addr_reg1_out,
    \sig_xfer_len_reg_reg[3]_0 ,
    \sig_xfer_len_reg_reg[3]_1 ,
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[1]_0 ,
    \sig_xfer_addr_reg_reg[31]_0 ,
    out,
    m00_axi_aclk,
    O,
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[7]_1 ,
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[11]_1 ,
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_1 ,
    sig_calc_error_reg_reg_1,
    sig_cmd2pcc_cmd_valid,
    sig_cmd_full_reg_reg_0,
    sig_cmd_full_reg_reg_1,
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_2 ,
    \sig_xfer_len_reg_reg[0]_0 ,
    sig_rdc2pcc_cmd_ready,
    sig_cmd2all_doing_read,
    sig_addr2stat_cmd_fifo_empty,
    sig_llink2rd_allow_addr_req,
    sig_next_calc_error_reg,
    sig_cmd2data_valid_reg_0,
    D,
    \sig_btt_cntr_reg[11]_1 );
  output [0:0]sig_pcc2addr_burst;
  output sig_pcc2data_cmd_cmplt;
  output sig_pcc2data_calc_error;
  output sig_calc_error_reg_reg_0;
  output sig_pcc2data_eof;
  output sig_pcc2data_sequential;
  output sig_pcc2data_cmd_valid;
  output sig_calc_error_pushed_reg_0;
  output [3:0]DI;
  output [6:0]Q;
  output [3:0]sig_input_reg_empty_reg_0;
  output sig_xfer_calc_err_reg_reg_0;
  output [0:0]SR;
  output [3:0]S;
  output [3:0]\GEN_ADDR_32.sig_addr_cntr_msh_reg[7]_0 ;
  output [3:0]\GEN_ADDR_32.sig_addr_cntr_msh_reg[11]_0 ;
  output [3:0]\GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_0 ;
  output sig_cmd_full_reg_reg;
  output sig_next_calc_error_reg_reg;
  output [11:0]\sig_btt_cntr_reg[11]_0 ;
  output sig_push_addr_reg1_out;
  output \sig_xfer_len_reg_reg[3]_0 ;
  output [3:0]\sig_xfer_len_reg_reg[3]_1 ;
  output [1:0]\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[1]_0 ;
  output [31:0]\sig_xfer_addr_reg_reg[31]_0 ;
  input out;
  input m00_axi_aclk;
  input [3:0]O;
  input [3:0]\GEN_ADDR_32.sig_addr_cntr_msh_reg[7]_1 ;
  input [3:0]\GEN_ADDR_32.sig_addr_cntr_msh_reg[11]_1 ;
  input [3:0]\GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_1 ;
  input sig_calc_error_reg_reg_1;
  input sig_cmd2pcc_cmd_valid;
  input sig_cmd_full_reg_reg_0;
  input sig_cmd_full_reg_reg_1;
  input [29:0]\GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_2 ;
  input \sig_xfer_len_reg_reg[0]_0 ;
  input sig_rdc2pcc_cmd_ready;
  input sig_cmd2all_doing_read;
  input sig_addr2stat_cmd_fifo_empty;
  input sig_llink2rd_allow_addr_req;
  input sig_next_calc_error_reg;
  input sig_cmd2data_valid_reg_0;
  input [1:0]D;
  input [11:0]\sig_btt_cntr_reg[11]_1 ;

  wire [1:0]D;
  wire [3:0]DI;
  wire \FSM_onehot_sig_pcc_sm_state[1]_i_1_n_0 ;
  wire \FSM_onehot_sig_pcc_sm_state[2]_i_1_n_0 ;
  wire \FSM_onehot_sig_pcc_sm_state[4]_i_1_n_0 ;
  wire \FSM_onehot_sig_pcc_sm_state[5]_i_1_n_0 ;
  wire \FSM_onehot_sig_pcc_sm_state[6]_i_1_n_0 ;
  wire \FSM_onehot_sig_pcc_sm_state_reg_n_0_[0] ;
  wire \FSM_onehot_sig_pcc_sm_state_reg_n_0_[1] ;
  wire \FSM_onehot_sig_pcc_sm_state_reg_n_0_[4] ;
  wire \FSM_onehot_sig_pcc_sm_state_reg_n_0_[5] ;
  wire \FSM_onehot_sig_pcc_sm_state_reg_n_0_[6] ;
  wire \GEN_ADDR_32.sig_addr_cntr_incr_imreg[0]_i_1_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_incr_imreg[1]_i_1_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_incr_imreg[2]_i_1_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_1_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_2_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_1_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_incr_imreg[5]_i_1_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_1_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_3_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_4_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[10] ;
  wire \GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[11] ;
  wire \GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[12] ;
  wire \GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[13] ;
  wire \GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[14] ;
  wire \GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[6] ;
  wire \GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[7] ;
  wire \GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[8] ;
  wire \GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[9] ;
  wire \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ;
  wire [15:0]\GEN_ADDR_32.sig_addr_cntr_msh_reg ;
  wire [3:0]\GEN_ADDR_32.sig_addr_cntr_msh_reg[11]_0 ;
  wire [3:0]\GEN_ADDR_32.sig_addr_cntr_msh_reg[11]_1 ;
  wire [3:0]\GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_0 ;
  wire [3:0]\GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_1 ;
  wire [29:0]\GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_2 ;
  wire [3:0]\GEN_ADDR_32.sig_addr_cntr_msh_reg[7]_0 ;
  wire [3:0]\GEN_ADDR_32.sig_addr_cntr_msh_reg[7]_1 ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg[2]_i_2_n_0 ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_2_n_0 ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_3_n_0 ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_4_n_0 ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg[4]_i_2_n_0 ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg[4]_i_3_n_0 ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_2_n_0 ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_3_n_0 ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_4_n_0 ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_5_n_0 ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_6_n_0 ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_7_n_0 ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_8_n_0 ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[0] ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[1] ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[2] ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[3] ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[4] ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[5] ;
  wire \GEN_ADDR_32.sig_first_xfer_i_1_n_0 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_2_n_0 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_3_n_0 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_4_n_0 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_5_n_0 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_2_n_0 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_3_n_0 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_4_n_0 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_0 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_1 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_2 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_3 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1_n_1 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1_n_2 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1_n_3 ;
  wire [1:0]\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[1]_0 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_0 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_1 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_2 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_3 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_0 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_1 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_2 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_3 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[10] ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[11] ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[12] ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[13] ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[14] ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[2] ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[3] ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[4] ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[5] ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[6] ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[7] ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[8] ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[9] ;
  wire [3:0]O;
  wire [6:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire m00_axi_aclk;
  wire out;
  wire p_0_in;
  wire [15:2]p_1_in;
  wire p_1_in2_in;
  wire sig_addr2stat_cmd_fifo_empty;
  wire [5:0]sig_adjusted_addr_incr;
  wire [11:0]\sig_btt_cntr_reg[11]_0 ;
  wire [11:0]\sig_btt_cntr_reg[11]_1 ;
  wire sig_btt_lt_b2mbaa1;
  wire sig_btt_lt_b2mbaa1_carry_i_2_n_0;
  wire sig_btt_lt_b2mbaa1_carry_i_3_n_0;
  wire sig_btt_lt_b2mbaa1_carry_i_4_n_0;
  wire sig_btt_lt_b2mbaa1_carry_i_5_n_0;
  wire sig_btt_lt_b2mbaa1_carry_i_6_n_0;
  wire sig_btt_lt_b2mbaa1_carry_i_7_n_0;
  wire sig_btt_lt_b2mbaa1_carry_i_8_n_0;
  wire sig_btt_lt_b2mbaa1_carry_n_1;
  wire sig_btt_lt_b2mbaa1_carry_n_2;
  wire sig_btt_lt_b2mbaa1_carry_n_3;
  wire [6:6]sig_bytes_to_mbaa;
  wire sig_calc_error_pushed_i_1_n_0;
  wire sig_calc_error_pushed_reg_0;
  wire sig_calc_error_reg_reg_0;
  wire sig_calc_error_reg_reg_1;
  wire sig_cmd2addr_valid_i_1_n_0;
  wire sig_cmd2all_doing_read;
  wire sig_cmd2data_valid_i_1_n_0;
  wire sig_cmd2data_valid_reg_0;
  wire sig_cmd2dre_valid_i_1_n_0;
  wire sig_cmd2dre_valid_reg_n_0;
  wire sig_cmd2pcc_cmd_valid;
  wire sig_cmd_full_reg_reg;
  wire sig_cmd_full_reg_reg_0;
  wire sig_cmd_full_reg_reg_1;
  wire sig_first_xfer;
  wire sig_input_burst_type_reg;
  wire sig_input_burst_type_reg_i_1_n_0;
  wire sig_input_eof_reg;
  wire sig_input_eof_reg_i_1_n_0;
  wire sig_input_reg_empty;
  wire sig_input_reg_empty_i_1_n_0;
  wire [3:0]sig_input_reg_empty_reg_0;
  wire sig_ld_xfer_reg;
  wire sig_ld_xfer_reg_i_1_n_0;
  wire sig_llink2rd_allow_addr_req;
  wire [5:0]sig_mbaa_addr_cntr_slice;
  wire sig_next_calc_error_reg;
  wire sig_next_calc_error_reg_reg;
  wire sig_parent_done;
  wire sig_parent_done_i_1_n_0;
  wire [0:0]sig_pcc2addr_burst;
  wire sig_pcc2addr_cmd_valid;
  wire sig_pcc2data_calc_error;
  wire sig_pcc2data_cmd_cmplt;
  wire sig_pcc2data_cmd_valid;
  wire sig_pcc2data_eof;
  wire sig_pcc2data_sequential;
  wire [15:0]sig_predict_addr_lsh_im3_in;
  wire sig_push_addr_reg1_out;
  wire sig_push_xfer_reg15_out;
  wire sig_rdc2pcc_cmd_ready;
  wire sig_sm_halt_ns;
  wire sig_sm_halt_reg;
  wire sig_sm_ld_calc2_reg_ns;
  wire sig_sm_ld_xfer_reg_ns;
  wire sig_sm_pop_input_reg;
  wire sig_sm_pop_input_reg_ns;
  wire sig_xfer_addr_reg0;
  wire [31:0]\sig_xfer_addr_reg_reg[31]_0 ;
  wire sig_xfer_calc_err_reg_reg_0;
  wire sig_xfer_cmd_cmplt_reg0;
  wire sig_xfer_cmd_cmplt_reg_i_10_n_0;
  wire sig_xfer_cmd_cmplt_reg_i_11_n_0;
  wire sig_xfer_cmd_cmplt_reg_i_12_n_0;
  wire sig_xfer_cmd_cmplt_reg_i_13_n_0;
  wire sig_xfer_cmd_cmplt_reg_i_14_n_0;
  wire sig_xfer_cmd_cmplt_reg_i_15_n_0;
  wire sig_xfer_cmd_cmplt_reg_i_2_n_0;
  wire sig_xfer_cmd_cmplt_reg_i_3_n_0;
  wire sig_xfer_cmd_cmplt_reg_i_4_n_0;
  wire sig_xfer_cmd_cmplt_reg_i_5_n_0;
  wire sig_xfer_cmd_cmplt_reg_i_6_n_0;
  wire sig_xfer_cmd_cmplt_reg_i_7_n_0;
  wire sig_xfer_cmd_cmplt_reg_i_8_n_0;
  wire sig_xfer_cmd_cmplt_reg_i_9_n_0;
  wire sig_xfer_eof_reg0;
  wire sig_xfer_eof_reg_i_2_n_0;
  wire sig_xfer_eof_reg_i_3_n_0;
  wire sig_xfer_eof_reg_i_4_n_0;
  wire sig_xfer_is_seq_reg_i_10_n_0;
  wire sig_xfer_is_seq_reg_i_11_n_0;
  wire sig_xfer_is_seq_reg_i_1_n_0;
  wire sig_xfer_is_seq_reg_i_2_n_0;
  wire sig_xfer_is_seq_reg_i_3_n_0;
  wire sig_xfer_is_seq_reg_i_4_n_0;
  wire sig_xfer_is_seq_reg_i_5_n_0;
  wire sig_xfer_is_seq_reg_i_6_n_0;
  wire sig_xfer_is_seq_reg_i_7_n_0;
  wire sig_xfer_is_seq_reg_i_8_n_0;
  wire sig_xfer_is_seq_reg_i_9_n_0;
  wire \sig_xfer_len_reg[0]_i_1_n_0 ;
  wire \sig_xfer_len_reg[1]_i_1_n_0 ;
  wire \sig_xfer_len_reg[2]_i_1_n_0 ;
  wire \sig_xfer_len_reg[3]_i_1_n_0 ;
  wire \sig_xfer_len_reg_reg[0]_0 ;
  wire \sig_xfer_len_reg_reg[3]_0 ;
  wire [3:0]\sig_xfer_len_reg_reg[3]_1 ;
  wire sig_xfer_reg_empty;
  wire sig_xfer_reg_empty_i_4_n_0;
  wire sig_xfer_reg_empty_i_5_n_0;
  wire [3:3]\NLW_GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_sig_btt_lt_b2mbaa1_carry_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFFFBAAABAAABAAA)) 
    \FSM_onehot_sig_pcc_sm_state[1]_i_1 
       (.I0(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[0] ),
        .I1(sig_calc_error_pushed_reg_0),
        .I2(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[5] ),
        .I3(sig_parent_done),
        .I4(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[1] ),
        .I5(sig_input_reg_empty_reg_0[3]),
        .O(\FSM_onehot_sig_pcc_sm_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h44444F44)) 
    \FSM_onehot_sig_pcc_sm_state[2]_i_1 
       (.I0(sig_input_reg_empty_reg_0[3]),
        .I1(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[1] ),
        .I2(sig_parent_done),
        .I3(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[5] ),
        .I4(sig_calc_error_pushed_reg_0),
        .O(\FSM_onehot_sig_pcc_sm_state[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF2A)) 
    \FSM_onehot_sig_pcc_sm_state[4]_i_1 
       (.I0(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[4] ),
        .I1(sig_ld_xfer_reg),
        .I2(sig_xfer_reg_empty),
        .I3(sig_sm_ld_xfer_reg_ns),
        .O(\FSM_onehot_sig_pcc_sm_state[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_onehot_sig_pcc_sm_state[5]_i_1 
       (.I0(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[4] ),
        .I1(sig_xfer_reg_empty),
        .I2(sig_ld_xfer_reg),
        .O(\FSM_onehot_sig_pcc_sm_state[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hF8)) 
    \FSM_onehot_sig_pcc_sm_state[6]_i_1 
       (.I0(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[5] ),
        .I1(sig_calc_error_pushed_reg_0),
        .I2(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[6] ),
        .O(\FSM_onehot_sig_pcc_sm_state[6]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "init:0000001,calc_2:0001000,wait_on_xfer_push:0010000,chk_if_done:0100000,error_trap:1000000,calc_1:0000100,wait_for_cmd:0000010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_sig_pcc_sm_state_reg[0] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[0] ),
        .S(out));
  (* FSM_ENCODED_STATES = "init:0000001,calc_2:0001000,wait_on_xfer_push:0010000,chk_if_done:0100000,error_trap:1000000,calc_1:0000100,wait_for_cmd:0000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sig_pcc_sm_state_reg[1] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_sig_pcc_sm_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[1] ),
        .R(out));
  (* FSM_ENCODED_STATES = "init:0000001,calc_2:0001000,wait_on_xfer_push:0010000,chk_if_done:0100000,error_trap:1000000,calc_1:0000100,wait_for_cmd:0000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sig_pcc_sm_state_reg[2] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_sig_pcc_sm_state[2]_i_1_n_0 ),
        .Q(sig_sm_ld_calc2_reg_ns),
        .R(out));
  (* FSM_ENCODED_STATES = "init:0000001,calc_2:0001000,wait_on_xfer_push:0010000,chk_if_done:0100000,error_trap:1000000,calc_1:0000100,wait_for_cmd:0000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sig_pcc_sm_state_reg[3] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_sm_ld_calc2_reg_ns),
        .Q(sig_sm_ld_xfer_reg_ns),
        .R(out));
  (* FSM_ENCODED_STATES = "init:0000001,calc_2:0001000,wait_on_xfer_push:0010000,chk_if_done:0100000,error_trap:1000000,calc_1:0000100,wait_for_cmd:0000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sig_pcc_sm_state_reg[4] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_sig_pcc_sm_state[4]_i_1_n_0 ),
        .Q(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[4] ),
        .R(out));
  (* FSM_ENCODED_STATES = "init:0000001,calc_2:0001000,wait_on_xfer_push:0010000,chk_if_done:0100000,error_trap:1000000,calc_1:0000100,wait_for_cmd:0000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sig_pcc_sm_state_reg[5] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_sig_pcc_sm_state[5]_i_1_n_0 ),
        .Q(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[5] ),
        .R(out));
  (* FSM_ENCODED_STATES = "init:0000001,calc_2:0001000,wait_on_xfer_push:0010000,chk_if_done:0100000,error_trap:1000000,calc_1:0000100,wait_for_cmd:0000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sig_pcc_sm_state_reg[6] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_sig_pcc_sm_state[6]_i_1_n_0 ),
        .Q(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[6] ),
        .R(out));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hCA0A)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg[0]_i_1 
       (.I0(\sig_btt_cntr_reg[11]_0 [0]),
        .I1(sig_mbaa_addr_cntr_slice[0]),
        .I2(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_3_n_0 ),
        .I3(sig_first_xfer),
        .O(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h60FF6000)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg[1]_i_1 
       (.I0(sig_mbaa_addr_cntr_slice[1]),
        .I1(sig_mbaa_addr_cntr_slice[0]),
        .I2(sig_first_xfer),
        .I3(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_3_n_0 ),
        .I4(\sig_btt_cntr_reg[11]_0 [1]),
        .O(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5600FFFF56000000)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg[2]_i_1 
       (.I0(sig_mbaa_addr_cntr_slice[2]),
        .I1(sig_mbaa_addr_cntr_slice[0]),
        .I2(sig_mbaa_addr_cntr_slice[1]),
        .I3(sig_first_xfer),
        .I4(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_3_n_0 ),
        .I5(\sig_btt_cntr_reg[11]_0 [2]),
        .O(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2E2E2EE222222222)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_1 
       (.I0(\sig_btt_cntr_reg[11]_0 [3]),
        .I1(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_3_n_0 ),
        .I2(sig_mbaa_addr_cntr_slice[3]),
        .I3(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_2_n_0 ),
        .I4(sig_mbaa_addr_cntr_slice[2]),
        .I5(sig_first_xfer),
        .O(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_2 
       (.I0(sig_mbaa_addr_cntr_slice[0]),
        .I1(sig_mbaa_addr_cntr_slice[1]),
        .O(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h3C00AAAA)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_1 
       (.I0(\sig_btt_cntr_reg[11]_0 [4]),
        .I1(sig_mbaa_addr_cntr_slice[4]),
        .I2(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2_n_0 ),
        .I3(sig_first_xfer),
        .I4(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_3_n_0 ),
        .O(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h333C0000AAAAAAAA)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg[5]_i_1 
       (.I0(\sig_btt_cntr_reg[11]_0 [5]),
        .I1(sig_mbaa_addr_cntr_slice[5]),
        .I2(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2_n_0 ),
        .I3(sig_mbaa_addr_cntr_slice[4]),
        .I4(sig_first_xfer),
        .I5(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_3_n_0 ),
        .O(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h01FF0000)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_1 
       (.I0(sig_mbaa_addr_cntr_slice[4]),
        .I1(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2_n_0 ),
        .I2(sig_mbaa_addr_cntr_slice[5]),
        .I3(sig_first_xfer),
        .I4(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_3_n_0 ),
        .O(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2 
       (.I0(sig_mbaa_addr_cntr_slice[2]),
        .I1(sig_mbaa_addr_cntr_slice[0]),
        .I2(sig_mbaa_addr_cntr_slice[1]),
        .I3(sig_mbaa_addr_cntr_slice[3]),
        .O(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_3 
       (.I0(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_4_n_0 ),
        .I1(sig_btt_lt_b2mbaa1),
        .O(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_4 
       (.I0(\sig_btt_cntr_reg[11]_0 [8]),
        .I1(\sig_btt_cntr_reg[11]_0 [9]),
        .I2(\sig_btt_cntr_reg[11]_0 [11]),
        .I3(\sig_btt_cntr_reg[11]_0 [10]),
        .I4(\sig_btt_cntr_reg[11]_0 [7]),
        .I5(\sig_btt_cntr_reg[11]_0 [6]),
        .O(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[0] 
       (.C(m00_axi_aclk),
        .CE(sig_sm_ld_calc2_reg_ns),
        .D(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[1] 
       (.C(m00_axi_aclk),
        .CE(sig_sm_ld_calc2_reg_ns),
        .D(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[2] 
       (.C(m00_axi_aclk),
        .CE(sig_sm_ld_calc2_reg_ns),
        .D(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[3] 
       (.C(m00_axi_aclk),
        .CE(sig_sm_ld_calc2_reg_ns),
        .D(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[4] 
       (.C(m00_axi_aclk),
        .CE(sig_sm_ld_calc2_reg_ns),
        .D(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[5] 
       (.C(m00_axi_aclk),
        .CE(sig_sm_ld_calc2_reg_ns),
        .D(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[6] 
       (.C(m00_axi_aclk),
        .CE(sig_sm_ld_calc2_reg_ns),
        .D(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(out));
  LUT6 #(
    .INIT(64'hAAAAAEAAAAAAA2AA)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[10]_i_1 
       (.I0(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[10] ),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_calc_error_reg_reg_0),
        .I5(\GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_2 [8]),
        .O(p_1_in[10]));
  LUT6 #(
    .INIT(64'hAAAAAEAAAAAAA2AA)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[11]_i_1 
       (.I0(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[11] ),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_calc_error_reg_reg_0),
        .I5(\GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_2 [9]),
        .O(p_1_in[11]));
  LUT6 #(
    .INIT(64'hAAAAAEAAAAAAA2AA)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[12]_i_1 
       (.I0(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[12] ),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_calc_error_reg_reg_0),
        .I5(\GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_2 [10]),
        .O(p_1_in[12]));
  LUT6 #(
    .INIT(64'hAAAAAEAAAAAAA2AA)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[13]_i_1 
       (.I0(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[13] ),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_calc_error_reg_reg_0),
        .I5(\GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_2 [11]),
        .O(p_1_in[13]));
  LUT6 #(
    .INIT(64'hAAAAAEAAAAAAA2AA)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[14]_i_1 
       (.I0(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[14] ),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_calc_error_reg_reg_0),
        .I5(\GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_2 [12]),
        .O(p_1_in[14]));
  LUT4 #(
    .INIT(16'h80FF)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1 
       (.I0(sig_input_burst_type_reg),
        .I1(sig_ld_xfer_reg),
        .I2(sig_xfer_reg_empty),
        .I3(sig_input_reg_empty_reg_0[3]),
        .O(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAEAAAAAAA2AA)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_2 
       (.I0(p_0_in),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_calc_error_reg_reg_0),
        .I5(\GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_2 [13]),
        .O(p_1_in[15]));
  LUT6 #(
    .INIT(64'hAAAAAEAAAAAAA2AA)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[2]_i_1 
       (.I0(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[2] ),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_calc_error_reg_reg_0),
        .I5(\GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_2 [0]),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'hAAAAAEAAAAAAA2AA)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[3]_i_1 
       (.I0(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[3] ),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_calc_error_reg_reg_0),
        .I5(\GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_2 [1]),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'hAAAAAEAAAAAAA2AA)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[4]_i_1 
       (.I0(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[4] ),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_calc_error_reg_reg_0),
        .I5(\GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_2 [2]),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'hAAAAAEAAAAAAA2AA)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[5]_i_1 
       (.I0(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[5] ),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_calc_error_reg_reg_0),
        .I5(\GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_2 [3]),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'hAAAAAEAAAAAAA2AA)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[6]_i_1 
       (.I0(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[6] ),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_calc_error_reg_reg_0),
        .I5(\GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_2 [4]),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'hAAAAAEAAAAAAA2AA)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[7]_i_1 
       (.I0(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[7] ),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_calc_error_reg_reg_0),
        .I5(\GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_2 [5]),
        .O(p_1_in[7]));
  LUT6 #(
    .INIT(64'hAAAAAEAAAAAAA2AA)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[8]_i_1 
       (.I0(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[8] ),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_calc_error_reg_reg_0),
        .I5(\GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_2 [6]),
        .O(p_1_in[8]));
  LUT6 #(
    .INIT(64'hAAAAAEAAAAAAA2AA)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[9]_i_1 
       (.I0(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[9] ),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_calc_error_reg_reg_0),
        .I5(\GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_2 [7]),
        .O(p_1_in[9]));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[0] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(D[0]),
        .Q(sig_mbaa_addr_cntr_slice[0]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[10] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(p_1_in[10]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[10] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[11] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(p_1_in[11]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[11] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[12] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(p_1_in[12]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[12] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[13] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(p_1_in[13]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[13] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[14] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(p_1_in[14]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[14] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[15] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(p_1_in[15]),
        .Q(p_1_in2_in),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[1] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(D[1]),
        .Q(sig_mbaa_addr_cntr_slice[1]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[2] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(sig_mbaa_addr_cntr_slice[2]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[3] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(sig_mbaa_addr_cntr_slice[3]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[4] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(sig_mbaa_addr_cntr_slice[4]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[5] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(sig_mbaa_addr_cntr_slice[5]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[6] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[6] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[7] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[7] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[8] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(p_1_in[8]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[8] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[9] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(p_1_in[9]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[9] ),
        .R(out));
  LUT6 #(
    .INIT(64'h00008000FFFFFFFF)) 
    \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1 
       (.I0(sig_xfer_reg_empty),
        .I1(sig_ld_xfer_reg),
        .I2(sig_input_burst_type_reg),
        .I3(p_1_in2_in),
        .I4(p_0_in),
        .I5(sig_input_reg_empty_reg_0[3]),
        .O(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[0] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ),
        .D(O[0]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg [0]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[10] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg[11]_1 [2]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg [10]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[11] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg[11]_1 [3]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg [11]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[12] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_1 [0]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg [12]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[13] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_1 [1]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg [13]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[14] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_1 [2]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg [14]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[15] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_1 [3]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg [15]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[1] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ),
        .D(O[1]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg [1]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[2] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ),
        .D(O[2]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg [2]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[3] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ),
        .D(O[3]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg [3]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[4] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg[7]_1 [0]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg [4]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[5] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg[7]_1 [1]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg [5]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[6] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg[7]_1 [2]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg [6]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[7] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg[7]_1 [3]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg [7]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[8] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg[11]_1 [0]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg [8]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[9] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg[11]_1 [1]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg [9]),
        .R(out));
  LUT4 #(
    .INIT(16'h12D2)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg[0]_i_1 
       (.I0(\sig_btt_cntr_reg[11]_0 [0]),
        .I1(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_3_n_0 ),
        .I2(sig_mbaa_addr_cntr_slice[0]),
        .I3(sig_first_xfer),
        .O(sig_adjusted_addr_incr[0]));
  LUT6 #(
    .INIT(64'h0000965AF0F0965A)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg[1]_i_1 
       (.I0(\sig_btt_cntr_reg[11]_0 [1]),
        .I1(\sig_btt_cntr_reg[11]_0 [0]),
        .I2(sig_mbaa_addr_cntr_slice[1]),
        .I3(sig_mbaa_addr_cntr_slice[0]),
        .I4(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_3_n_0 ),
        .I5(sig_first_xfer),
        .O(sig_adjusted_addr_incr[1]));
  LUT6 #(
    .INIT(64'hFFB800B800B800B8)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg[2]_i_1 
       (.I0(\GEN_ADDR_32.sig_adjusted_addr_incr_reg[2]_i_2_n_0 ),
        .I1(\sig_btt_cntr_reg[11]_0 [2]),
        .I2(\GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_3_n_0 ),
        .I3(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_3_n_0 ),
        .I4(sig_first_xfer),
        .I5(sig_mbaa_addr_cntr_slice[2]),
        .O(sig_adjusted_addr_incr[2]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h175F)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg[2]_i_2 
       (.I0(\sig_btt_cntr_reg[11]_0 [1]),
        .I1(sig_mbaa_addr_cntr_slice[0]),
        .I2(sig_mbaa_addr_cntr_slice[1]),
        .I3(\sig_btt_cntr_reg[11]_0 [0]),
        .O(\GEN_ADDR_32.sig_adjusted_addr_incr_reg[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00B80088)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_1 
       (.I0(\GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_2_n_0 ),
        .I1(\sig_btt_cntr_reg[11]_0 [3]),
        .I2(\GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_3_n_0 ),
        .I3(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_3_n_0 ),
        .I4(\sig_btt_cntr_reg[11]_0 [2]),
        .I5(\GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_4_n_0 ),
        .O(sig_adjusted_addr_incr[3]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h137FFFFF)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_2 
       (.I0(\sig_btt_cntr_reg[11]_0 [0]),
        .I1(sig_mbaa_addr_cntr_slice[1]),
        .I2(sig_mbaa_addr_cntr_slice[0]),
        .I3(\sig_btt_cntr_reg[11]_0 [1]),
        .I4(\sig_btt_cntr_reg[11]_0 [2]),
        .O(\GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hF880)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_3 
       (.I0(\sig_btt_cntr_reg[11]_0 [0]),
        .I1(sig_mbaa_addr_cntr_slice[0]),
        .I2(sig_mbaa_addr_cntr_slice[1]),
        .I3(\sig_btt_cntr_reg[11]_0 [1]),
        .O(\GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00D0D000)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_4 
       (.I0(sig_btt_lt_b2mbaa1),
        .I1(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_4_n_0 ),
        .I2(sig_first_xfer),
        .I3(sig_mbaa_addr_cntr_slice[2]),
        .I4(sig_mbaa_addr_cntr_slice[3]),
        .O(\GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAEAAAEAAAEAEAAA)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg[4]_i_1 
       (.I0(\GEN_ADDR_32.sig_adjusted_addr_incr_reg[4]_i_2_n_0 ),
        .I1(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_3_n_0 ),
        .I2(sig_first_xfer),
        .I3(sig_mbaa_addr_cntr_slice[4]),
        .I4(sig_mbaa_addr_cntr_slice[3]),
        .I5(sig_mbaa_addr_cntr_slice[2]),
        .O(sig_adjusted_addr_incr[4]));
  LUT6 #(
    .INIT(64'h0000F80000008800)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg[4]_i_2 
       (.I0(\GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_4_n_0 ),
        .I1(\sig_btt_cntr_reg[11]_0 [4]),
        .I2(\sig_btt_cntr_reg[11]_0 [2]),
        .I3(sig_btt_lt_b2mbaa1),
        .I4(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_4_n_0 ),
        .I5(\GEN_ADDR_32.sig_adjusted_addr_incr_reg[4]_i_3_n_0 ),
        .O(\GEN_ADDR_32.sig_adjusted_addr_incr_reg[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4440400040004000)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg[4]_i_3 
       (.I0(\sig_btt_cntr_reg[11]_0 [4]),
        .I1(\sig_btt_cntr_reg[11]_0 [3]),
        .I2(\sig_btt_cntr_reg[11]_0 [1]),
        .I3(sig_mbaa_addr_cntr_slice[1]),
        .I4(sig_mbaa_addr_cntr_slice[0]),
        .I5(\sig_btt_cntr_reg[11]_0 [0]),
        .O(\GEN_ADDR_32.sig_adjusted_addr_incr_reg[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAEAFFEAFFEAEAEA)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_1 
       (.I0(\GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_2_n_0 ),
        .I1(\GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_3_n_0 ),
        .I2(\GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_4_n_0 ),
        .I3(\GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_5_n_0 ),
        .I4(\GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_6_n_0 ),
        .I5(sig_mbaa_addr_cntr_slice[5]),
        .O(sig_adjusted_addr_incr[5]));
  LUT6 #(
    .INIT(64'h0000F20000002200)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_2 
       (.I0(\sig_btt_cntr_reg[11]_0 [5]),
        .I1(\sig_btt_cntr_reg[11]_0 [4]),
        .I2(\sig_btt_cntr_reg[11]_0 [2]),
        .I3(sig_btt_lt_b2mbaa1),
        .I4(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_4_n_0 ),
        .I5(\GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_7_n_0 ),
        .O(\GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_3 
       (.I0(\sig_btt_cntr_reg[11]_0 [5]),
        .I1(sig_btt_lt_b2mbaa1),
        .I2(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_4_n_0 ),
        .O(\GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h577F77FFFFFFFFFF)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_4 
       (.I0(\sig_btt_cntr_reg[11]_0 [2]),
        .I1(\sig_btt_cntr_reg[11]_0 [1]),
        .I2(sig_mbaa_addr_cntr_slice[0]),
        .I3(sig_mbaa_addr_cntr_slice[1]),
        .I4(\sig_btt_cntr_reg[11]_0 [0]),
        .I5(\sig_btt_cntr_reg[11]_0 [3]),
        .O(\GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_5 
       (.I0(sig_btt_lt_b2mbaa1),
        .I1(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_4_n_0 ),
        .I2(sig_first_xfer),
        .O(\GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_6 
       (.I0(sig_mbaa_addr_cntr_slice[3]),
        .I1(sig_mbaa_addr_cntr_slice[2]),
        .I2(sig_mbaa_addr_cntr_slice[4]),
        .O(\GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0800000008080800)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_7 
       (.I0(\sig_btt_cntr_reg[11]_0 [3]),
        .I1(\sig_btt_cntr_reg[11]_0 [4]),
        .I2(\sig_btt_cntr_reg[11]_0 [5]),
        .I3(\sig_btt_cntr_reg[11]_0 [1]),
        .I4(sig_mbaa_addr_cntr_slice[1]),
        .I5(\GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_8_n_0 ),
        .O(\GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_8 
       (.I0(\sig_btt_cntr_reg[11]_0 [0]),
        .I1(sig_mbaa_addr_cntr_slice[0]),
        .O(\GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[0] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_adjusted_addr_incr[0]),
        .Q(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[0] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[1] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_adjusted_addr_incr[1]),
        .Q(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[1] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[2] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_adjusted_addr_incr[2]),
        .Q(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[2] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[3] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_adjusted_addr_incr[3]),
        .Q(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[3] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[4] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_adjusted_addr_incr[4]),
        .Q(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[4] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[5] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_adjusted_addr_incr[5]),
        .Q(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[5] ),
        .R(out));
  LUT6 #(
    .INIT(64'h0045454545454545)) 
    \GEN_ADDR_32.sig_first_xfer_i_1 
       (.I0(out),
        .I1(sig_first_xfer),
        .I2(sig_input_reg_empty_reg_0[3]),
        .I3(sig_input_burst_type_reg),
        .I4(sig_ld_xfer_reg),
        .I5(sig_xfer_reg_empty),
        .O(\GEN_ADDR_32.sig_first_xfer_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_first_xfer_reg 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\GEN_ADDR_32.sig_first_xfer_i_1_n_0 ),
        .Q(sig_first_xfer),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_2 
       (.I0(sig_mbaa_addr_cntr_slice[3]),
        .I1(Q[3]),
        .O(\GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_3 
       (.I0(sig_mbaa_addr_cntr_slice[2]),
        .I1(Q[2]),
        .O(\GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_4 
       (.I0(sig_mbaa_addr_cntr_slice[1]),
        .I1(Q[1]),
        .O(\GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_5 
       (.I0(sig_mbaa_addr_cntr_slice[0]),
        .I1(Q[0]),
        .O(\GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_2 
       (.I0(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[6] ),
        .I1(Q[6]),
        .O(\GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_3 
       (.I0(sig_mbaa_addr_cntr_slice[5]),
        .I1(Q[5]),
        .O(\GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_4 
       (.I0(sig_mbaa_addr_cntr_slice[4]),
        .I1(Q[4]),
        .O(\GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[0] 
       (.C(m00_axi_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_predict_addr_lsh_im3_in[0]),
        .Q(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[1]_0 [0]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[10] 
       (.C(m00_axi_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_predict_addr_lsh_im3_in[10]),
        .Q(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[10] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11] 
       (.C(m00_axi_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_predict_addr_lsh_im3_in[11]),
        .Q(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[11] ),
        .R(out));
  CARRY4 \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1 
       (.CI(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_0 ),
        .CO({\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_0 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_1 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_2 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sig_predict_addr_lsh_im3_in[11:8]),
        .S({\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[11] ,\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[10] ,\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[9] ,\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[8] }));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[12] 
       (.C(m00_axi_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_predict_addr_lsh_im3_in[12]),
        .Q(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[12] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[13] 
       (.C(m00_axi_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_predict_addr_lsh_im3_in[13]),
        .Q(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[13] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[14] 
       (.C(m00_axi_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_predict_addr_lsh_im3_in[14]),
        .Q(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[14] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15] 
       (.C(m00_axi_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_predict_addr_lsh_im3_in[15]),
        .Q(p_0_in),
        .R(out));
  CARRY4 \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1 
       (.CI(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_0 ),
        .CO({\NLW_GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1_CO_UNCONNECTED [3],\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1_n_1 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1_n_2 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sig_predict_addr_lsh_im3_in[15:12]),
        .S({p_1_in2_in,\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[14] ,\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[13] ,\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[12] }));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[1] 
       (.C(m00_axi_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_predict_addr_lsh_im3_in[1]),
        .Q(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[1]_0 [1]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[2] 
       (.C(m00_axi_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_predict_addr_lsh_im3_in[2]),
        .Q(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[2] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3] 
       (.C(m00_axi_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_predict_addr_lsh_im3_in[3]),
        .Q(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[3] ),
        .R(out));
  CARRY4 \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_0 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_1 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_2 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(sig_mbaa_addr_cntr_slice[3:0]),
        .O(sig_predict_addr_lsh_im3_in[3:0]),
        .S({\GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_2_n_0 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_3_n_0 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_4_n_0 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[4] 
       (.C(m00_axi_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_predict_addr_lsh_im3_in[4]),
        .Q(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[4] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[5] 
       (.C(m00_axi_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_predict_addr_lsh_im3_in[5]),
        .Q(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[5] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[6] 
       (.C(m00_axi_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_predict_addr_lsh_im3_in[6]),
        .Q(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[6] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7] 
       (.C(m00_axi_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_predict_addr_lsh_im3_in[7]),
        .Q(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[7] ),
        .R(out));
  CARRY4 \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1 
       (.CI(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_0 ),
        .CO({\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_0 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_1 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_2 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[6] ,sig_mbaa_addr_cntr_slice[5:4]}),
        .O(sig_predict_addr_lsh_im3_in[7:4]),
        .S({\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[7] ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_2_n_0 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_3_n_0 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[8] 
       (.C(m00_axi_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_predict_addr_lsh_im3_in[8]),
        .Q(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[8] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[9] 
       (.C(m00_axi_aclk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_predict_addr_lsh_im3_in[9]),
        .Q(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[9] ),
        .R(out));
  LUT6 #(
    .INIT(64'hAAAAAEAAAAAAA2AA)) 
    i__carry__0_i_1
       (.I0(\GEN_ADDR_32.sig_addr_cntr_msh_reg [7]),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_calc_error_reg_reg_0),
        .I5(\GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_2 [21]),
        .O(\GEN_ADDR_32.sig_addr_cntr_msh_reg[7]_0 [3]));
  LUT6 #(
    .INIT(64'hAAAAAEAAAAAAA2AA)) 
    i__carry__0_i_2
       (.I0(\GEN_ADDR_32.sig_addr_cntr_msh_reg [6]),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_calc_error_reg_reg_0),
        .I5(\GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_2 [20]),
        .O(\GEN_ADDR_32.sig_addr_cntr_msh_reg[7]_0 [2]));
  LUT6 #(
    .INIT(64'hAAAAAEAAAAAAA2AA)) 
    i__carry__0_i_3
       (.I0(\GEN_ADDR_32.sig_addr_cntr_msh_reg [5]),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_calc_error_reg_reg_0),
        .I5(\GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_2 [19]),
        .O(\GEN_ADDR_32.sig_addr_cntr_msh_reg[7]_0 [1]));
  LUT6 #(
    .INIT(64'hAAAAAEAAAAAAA2AA)) 
    i__carry__0_i_4
       (.I0(\GEN_ADDR_32.sig_addr_cntr_msh_reg [4]),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_calc_error_reg_reg_0),
        .I5(\GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_2 [18]),
        .O(\GEN_ADDR_32.sig_addr_cntr_msh_reg[7]_0 [0]));
  LUT6 #(
    .INIT(64'hAAAAAEAAAAAAA2AA)) 
    i__carry__1_i_1
       (.I0(\GEN_ADDR_32.sig_addr_cntr_msh_reg [11]),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_calc_error_reg_reg_0),
        .I5(\GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_2 [25]),
        .O(\GEN_ADDR_32.sig_addr_cntr_msh_reg[11]_0 [3]));
  LUT6 #(
    .INIT(64'hAAAAAEAAAAAAA2AA)) 
    i__carry__1_i_2
       (.I0(\GEN_ADDR_32.sig_addr_cntr_msh_reg [10]),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_calc_error_reg_reg_0),
        .I5(\GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_2 [24]),
        .O(\GEN_ADDR_32.sig_addr_cntr_msh_reg[11]_0 [2]));
  LUT6 #(
    .INIT(64'hAAAAAEAAAAAAA2AA)) 
    i__carry__1_i_3
       (.I0(\GEN_ADDR_32.sig_addr_cntr_msh_reg [9]),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_calc_error_reg_reg_0),
        .I5(\GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_2 [23]),
        .O(\GEN_ADDR_32.sig_addr_cntr_msh_reg[11]_0 [1]));
  LUT6 #(
    .INIT(64'hAAAAAEAAAAAAA2AA)) 
    i__carry__1_i_4
       (.I0(\GEN_ADDR_32.sig_addr_cntr_msh_reg [8]),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_calc_error_reg_reg_0),
        .I5(\GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_2 [22]),
        .O(\GEN_ADDR_32.sig_addr_cntr_msh_reg[11]_0 [0]));
  LUT6 #(
    .INIT(64'hAAAAAEAAAAAAA2AA)) 
    i__carry__2_i_1
       (.I0(\GEN_ADDR_32.sig_addr_cntr_msh_reg [15]),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_calc_error_reg_reg_0),
        .I5(\GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_2 [29]),
        .O(\GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_0 [3]));
  LUT6 #(
    .INIT(64'hAAAAAEAAAAAAA2AA)) 
    i__carry__2_i_2
       (.I0(\GEN_ADDR_32.sig_addr_cntr_msh_reg [14]),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_calc_error_reg_reg_0),
        .I5(\GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_2 [28]),
        .O(\GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_0 [2]));
  LUT6 #(
    .INIT(64'hAAAAAEAAAAAAA2AA)) 
    i__carry__2_i_3
       (.I0(\GEN_ADDR_32.sig_addr_cntr_msh_reg [13]),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_calc_error_reg_reg_0),
        .I5(\GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_2 [27]),
        .O(\GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_0 [1]));
  LUT6 #(
    .INIT(64'hAAAAAEAAAAAAA2AA)) 
    i__carry__2_i_4
       (.I0(\GEN_ADDR_32.sig_addr_cntr_msh_reg [12]),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_calc_error_reg_reg_0),
        .I5(\GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_2 [26]),
        .O(\GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_0 [0]));
  LUT4 #(
    .INIT(16'hFFDF)) 
    i__carry_i_1
       (.I0(sig_input_reg_empty),
        .I1(sig_sm_halt_reg),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_calc_error_reg_reg_0),
        .O(sig_input_reg_empty_reg_0[3]));
  LUT6 #(
    .INIT(64'hAAAAAEAAAAAAA2AA)) 
    i__carry_i_2
       (.I0(\GEN_ADDR_32.sig_addr_cntr_msh_reg [3]),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_calc_error_reg_reg_0),
        .I5(\GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_2 [17]),
        .O(S[3]));
  LUT6 #(
    .INIT(64'hAAAAAEAAAAAAA2AA)) 
    i__carry_i_3
       (.I0(\GEN_ADDR_32.sig_addr_cntr_msh_reg [2]),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_calc_error_reg_reg_0),
        .I5(\GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_2 [16]),
        .O(S[2]));
  LUT6 #(
    .INIT(64'hAAAAAEAAAAAAA2AA)) 
    i__carry_i_4
       (.I0(\GEN_ADDR_32.sig_addr_cntr_msh_reg [1]),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_calc_error_reg_reg_0),
        .I5(\GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_2 [15]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h33333A3333333333)) 
    i__carry_i_5
       (.I0(\GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_2 [14]),
        .I1(\GEN_ADDR_32.sig_addr_cntr_msh_reg [0]),
        .I2(sig_calc_error_reg_reg_0),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_sm_halt_reg),
        .I5(sig_input_reg_empty),
        .O(S[0]));
  LUT5 #(
    .INIT(32'h0000FBFF)) 
    \sig_btt_cntr[3]_i_2 
       (.I0(sig_calc_error_reg_reg_0),
        .I1(sig_cmd2pcc_cmd_valid),
        .I2(sig_sm_halt_reg),
        .I3(sig_input_reg_empty),
        .I4(Q[3]),
        .O(DI[3]));
  LUT5 #(
    .INIT(32'h0000FBFF)) 
    \sig_btt_cntr[3]_i_3 
       (.I0(sig_calc_error_reg_reg_0),
        .I1(sig_cmd2pcc_cmd_valid),
        .I2(sig_sm_halt_reg),
        .I3(sig_input_reg_empty),
        .I4(Q[2]),
        .O(DI[2]));
  LUT5 #(
    .INIT(32'h0000FBFF)) 
    \sig_btt_cntr[3]_i_4 
       (.I0(sig_calc_error_reg_reg_0),
        .I1(sig_cmd2pcc_cmd_valid),
        .I2(sig_sm_halt_reg),
        .I3(sig_input_reg_empty),
        .I4(Q[1]),
        .O(DI[1]));
  LUT5 #(
    .INIT(32'h0000FBFF)) 
    \sig_btt_cntr[3]_i_5 
       (.I0(sig_calc_error_reg_reg_0),
        .I1(sig_cmd2pcc_cmd_valid),
        .I2(sig_sm_halt_reg),
        .I3(sig_input_reg_empty),
        .I4(Q[0]),
        .O(DI[0]));
  LUT5 #(
    .INIT(32'h0000FBFF)) 
    \sig_btt_cntr[7]_i_2 
       (.I0(sig_calc_error_reg_reg_0),
        .I1(sig_cmd2pcc_cmd_valid),
        .I2(sig_sm_halt_reg),
        .I3(sig_input_reg_empty),
        .I4(Q[6]),
        .O(sig_input_reg_empty_reg_0[2]));
  LUT5 #(
    .INIT(32'h0000FBFF)) 
    \sig_btt_cntr[7]_i_3 
       (.I0(sig_calc_error_reg_reg_0),
        .I1(sig_cmd2pcc_cmd_valid),
        .I2(sig_sm_halt_reg),
        .I3(sig_input_reg_empty),
        .I4(Q[5]),
        .O(sig_input_reg_empty_reg_0[1]));
  LUT5 #(
    .INIT(32'h0000FBFF)) 
    \sig_btt_cntr[7]_i_4 
       (.I0(sig_calc_error_reg_reg_0),
        .I1(sig_cmd2pcc_cmd_valid),
        .I2(sig_sm_halt_reg),
        .I3(sig_input_reg_empty),
        .I4(Q[4]),
        .O(sig_input_reg_empty_reg_0[0]));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_reg[0] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_reg[11]_1 [0]),
        .Q(\sig_btt_cntr_reg[11]_0 [0]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_reg[10] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_reg[11]_1 [10]),
        .Q(\sig_btt_cntr_reg[11]_0 [10]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_reg[11] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_reg[11]_1 [11]),
        .Q(\sig_btt_cntr_reg[11]_0 [11]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_reg[1] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_reg[11]_1 [1]),
        .Q(\sig_btt_cntr_reg[11]_0 [1]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_reg[2] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_reg[11]_1 [2]),
        .Q(\sig_btt_cntr_reg[11]_0 [2]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_reg[3] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_reg[11]_1 [3]),
        .Q(\sig_btt_cntr_reg[11]_0 [3]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_reg[4] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_reg[11]_1 [4]),
        .Q(\sig_btt_cntr_reg[11]_0 [4]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_reg[5] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_reg[11]_1 [5]),
        .Q(\sig_btt_cntr_reg[11]_0 [5]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_reg[6] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_reg[11]_1 [6]),
        .Q(\sig_btt_cntr_reg[11]_0 [6]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_reg[7] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_reg[11]_1 [7]),
        .Q(\sig_btt_cntr_reg[11]_0 [7]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_reg[8] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_reg[11]_1 [8]),
        .Q(\sig_btt_cntr_reg[11]_0 [8]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_reg[9] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_reg[11]_1 [9]),
        .Q(\sig_btt_cntr_reg[11]_0 [9]),
        .R(out));
  CARRY4 sig_btt_lt_b2mbaa1_carry
       (.CI(1'b0),
        .CO({sig_btt_lt_b2mbaa1,sig_btt_lt_b2mbaa1_carry_n_1,sig_btt_lt_b2mbaa1_carry_n_2,sig_btt_lt_b2mbaa1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({sig_bytes_to_mbaa,sig_btt_lt_b2mbaa1_carry_i_2_n_0,sig_btt_lt_b2mbaa1_carry_i_3_n_0,sig_btt_lt_b2mbaa1_carry_i_4_n_0}),
        .O(NLW_sig_btt_lt_b2mbaa1_carry_O_UNCONNECTED[3:0]),
        .S({sig_btt_lt_b2mbaa1_carry_i_5_n_0,sig_btt_lt_b2mbaa1_carry_i_6_n_0,sig_btt_lt_b2mbaa1_carry_i_7_n_0,sig_btt_lt_b2mbaa1_carry_i_8_n_0}));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    sig_btt_lt_b2mbaa1_carry_i_1
       (.I0(sig_mbaa_addr_cntr_slice[5]),
        .I1(sig_mbaa_addr_cntr_slice[3]),
        .I2(sig_mbaa_addr_cntr_slice[1]),
        .I3(sig_mbaa_addr_cntr_slice[0]),
        .I4(sig_mbaa_addr_cntr_slice[2]),
        .I5(sig_mbaa_addr_cntr_slice[4]),
        .O(sig_bytes_to_mbaa));
  LUT5 #(
    .INIT(32'h03171730)) 
    sig_btt_lt_b2mbaa1_carry_i_2
       (.I0(\sig_btt_cntr_reg[11]_0 [4]),
        .I1(\sig_btt_cntr_reg[11]_0 [5]),
        .I2(sig_mbaa_addr_cntr_slice[5]),
        .I3(sig_mbaa_addr_cntr_slice[4]),
        .I4(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2_n_0 ),
        .O(sig_btt_lt_b2mbaa1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h0101011337373770)) 
    sig_btt_lt_b2mbaa1_carry_i_3
       (.I0(\sig_btt_cntr_reg[11]_0 [2]),
        .I1(\sig_btt_cntr_reg[11]_0 [3]),
        .I2(sig_mbaa_addr_cntr_slice[2]),
        .I3(sig_mbaa_addr_cntr_slice[0]),
        .I4(sig_mbaa_addr_cntr_slice[1]),
        .I5(sig_mbaa_addr_cntr_slice[3]),
        .O(sig_btt_lt_b2mbaa1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h047C)) 
    sig_btt_lt_b2mbaa1_carry_i_4
       (.I0(\sig_btt_cntr_reg[11]_0 [0]),
        .I1(sig_mbaa_addr_cntr_slice[0]),
        .I2(sig_mbaa_addr_cntr_slice[1]),
        .I3(\sig_btt_cntr_reg[11]_0 [1]),
        .O(sig_btt_lt_b2mbaa1_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    sig_btt_lt_b2mbaa1_carry_i_5
       (.I0(sig_mbaa_addr_cntr_slice[4]),
        .I1(sig_mbaa_addr_cntr_slice[2]),
        .I2(sig_mbaa_addr_cntr_slice[0]),
        .I3(sig_mbaa_addr_cntr_slice[1]),
        .I4(sig_mbaa_addr_cntr_slice[3]),
        .I5(sig_mbaa_addr_cntr_slice[5]),
        .O(sig_btt_lt_b2mbaa1_carry_i_5_n_0));
  LUT5 #(
    .INIT(32'h14284281)) 
    sig_btt_lt_b2mbaa1_carry_i_6
       (.I0(sig_mbaa_addr_cntr_slice[5]),
        .I1(sig_mbaa_addr_cntr_slice[4]),
        .I2(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2_n_0 ),
        .I3(\sig_btt_cntr_reg[11]_0 [5]),
        .I4(\sig_btt_cntr_reg[11]_0 [4]),
        .O(sig_btt_lt_b2mbaa1_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h0660066006601881)) 
    sig_btt_lt_b2mbaa1_carry_i_7
       (.I0(\sig_btt_cntr_reg[11]_0 [2]),
        .I1(sig_mbaa_addr_cntr_slice[2]),
        .I2(sig_mbaa_addr_cntr_slice[3]),
        .I3(\sig_btt_cntr_reg[11]_0 [3]),
        .I4(sig_mbaa_addr_cntr_slice[1]),
        .I5(sig_mbaa_addr_cntr_slice[0]),
        .O(sig_btt_lt_b2mbaa1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h6009)) 
    sig_btt_lt_b2mbaa1_carry_i_8
       (.I0(sig_mbaa_addr_cntr_slice[1]),
        .I1(\sig_btt_cntr_reg[11]_0 [1]),
        .I2(sig_mbaa_addr_cntr_slice[0]),
        .I3(\sig_btt_cntr_reg[11]_0 [0]),
        .O(sig_btt_lt_b2mbaa1_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    sig_calc_error_pushed_i_1
       (.I0(sig_calc_error_reg_reg_0),
        .I1(sig_xfer_reg_empty),
        .I2(sig_ld_xfer_reg),
        .I3(sig_calc_error_pushed_reg_0),
        .O(sig_calc_error_pushed_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_calc_error_pushed_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_calc_error_pushed_i_1_n_0),
        .Q(sig_calc_error_pushed_reg_0),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    sig_calc_error_reg_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_calc_error_reg_reg_1),
        .Q(sig_calc_error_reg_reg_0),
        .R(out));
  LUT6 #(
    .INIT(64'h0511551155115511)) 
    sig_cmd2addr_valid_i_1
       (.I0(out),
        .I1(sig_xfer_reg_empty_i_5_n_0),
        .I2(sig_cmd2all_doing_read),
        .I3(sig_pcc2addr_cmd_valid),
        .I4(sig_addr2stat_cmd_fifo_empty),
        .I5(sig_llink2rd_allow_addr_req),
        .O(sig_cmd2addr_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_cmd2addr_valid_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_cmd2addr_valid_i_1_n_0),
        .Q(sig_pcc2addr_cmd_valid),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h54440000)) 
    sig_cmd2data_valid_i_1
       (.I0(out),
        .I1(sig_pcc2data_cmd_valid),
        .I2(sig_ld_xfer_reg),
        .I3(sig_xfer_reg_empty),
        .I4(sig_cmd2data_valid_reg_0),
        .O(sig_cmd2data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_cmd2data_valid_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_cmd2data_valid_i_1_n_0),
        .Q(sig_pcc2data_cmd_valid),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h10000000)) 
    sig_cmd2dre_valid_i_1
       (.I0(out),
        .I1(sig_cmd2dre_valid_reg_n_0),
        .I2(sig_first_xfer),
        .I3(sig_xfer_reg_empty),
        .I4(sig_ld_xfer_reg),
        .O(sig_cmd2dre_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_cmd2dre_valid_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_cmd2dre_valid_i_1_n_0),
        .Q(sig_cmd2dre_valid_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00002000)) 
    sig_cmd_full_reg_i_1
       (.I0(sig_cmd2pcc_cmd_valid),
        .I1(sig_sm_halt_reg),
        .I2(sig_input_reg_empty),
        .I3(sig_cmd_full_reg_reg_0),
        .I4(sig_calc_error_pushed_reg_0),
        .I5(sig_cmd_full_reg_reg_1),
        .O(SR));
  LUT3 #(
    .INIT(8'hDF)) 
    sig_doing_read_reg_i_2
       (.I0(sig_cmd2pcc_cmd_valid),
        .I1(sig_sm_halt_reg),
        .I2(sig_input_reg_empty),
        .O(sig_cmd_full_reg_reg));
  LUT5 #(
    .INIT(32'h0000000B)) 
    sig_input_burst_type_reg_i_1
       (.I0(sig_input_burst_type_reg),
        .I1(sig_input_reg_empty_reg_0[3]),
        .I2(sig_sm_pop_input_reg),
        .I3(sig_calc_error_pushed_reg_0),
        .I4(out),
        .O(sig_input_burst_type_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_input_burst_type_reg_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_input_burst_type_reg_i_1_n_0),
        .Q(sig_input_burst_type_reg),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0000000B)) 
    sig_input_eof_reg_i_1
       (.I0(sig_input_eof_reg),
        .I1(sig_input_reg_empty_reg_0[3]),
        .I2(sig_sm_pop_input_reg),
        .I3(sig_calc_error_pushed_reg_0),
        .I4(out),
        .O(sig_input_eof_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_input_eof_reg_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_input_eof_reg_i_1_n_0),
        .Q(sig_input_eof_reg),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFFFFF8)) 
    sig_input_reg_empty_i_1
       (.I0(sig_input_reg_empty),
        .I1(sig_input_reg_empty_reg_0[3]),
        .I2(sig_sm_pop_input_reg),
        .I3(sig_calc_error_pushed_reg_0),
        .I4(out),
        .O(sig_input_reg_empty_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_input_reg_empty_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_input_reg_empty_i_1_n_0),
        .Q(sig_input_reg_empty),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    sig_last_dbeat_i_3
       (.I0(\sig_xfer_len_reg_reg[3]_1 [3]),
        .I1(out),
        .I2(\sig_xfer_len_reg_reg[3]_1 [2]),
        .I3(\sig_xfer_len_reg_reg[3]_1 [1]),
        .I4(\sig_xfer_len_reg_reg[3]_1 [0]),
        .I5(sig_rdc2pcc_cmd_ready),
        .O(\sig_xfer_len_reg_reg[3]_0 ));
  LUT4 #(
    .INIT(16'h0544)) 
    sig_ld_xfer_reg_i_1
       (.I0(out),
        .I1(sig_sm_ld_xfer_reg_ns),
        .I2(sig_xfer_reg_empty),
        .I3(sig_ld_xfer_reg),
        .O(sig_ld_xfer_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_ld_xfer_reg_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_ld_xfer_reg_i_1_n_0),
        .Q(sig_ld_xfer_reg),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \sig_next_addr_reg[31]_i_2 
       (.I0(sig_cmd2all_doing_read),
        .I1(sig_pcc2addr_cmd_valid),
        .I2(sig_addr2stat_cmd_fifo_empty),
        .I3(sig_llink2rd_allow_addr_req),
        .O(sig_push_addr_reg1_out));
  LUT6 #(
    .INIT(64'h4545454000000000)) 
    sig_parent_done_i_1
       (.I0(out),
        .I1(sig_parent_done),
        .I2(sig_xfer_reg_empty_i_5_n_0),
        .I3(sig_xfer_cmd_cmplt_reg_i_2_n_0),
        .I4(sig_xfer_cmd_cmplt_reg_i_3_n_0),
        .I5(sig_input_reg_empty_reg_0[3]),
        .O(sig_parent_done_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_parent_done_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_parent_done_i_1_n_0),
        .Q(sig_parent_done),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    sig_rd_addr_valid_reg_i_1
       (.I0(sig_pcc2data_calc_error),
        .O(sig_xfer_calc_err_reg_reg_0));
  LUT4 #(
    .INIT(16'hFFEA)) 
    sig_sm_halt_reg_i_1
       (.I0(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[6] ),
        .I1(sig_calc_error_pushed_reg_0),
        .I2(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[5] ),
        .I3(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[0] ),
        .O(sig_sm_halt_ns));
  FDSE #(
    .INIT(1'b0)) 
    sig_sm_halt_reg_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_sm_halt_ns),
        .Q(sig_sm_halt_reg),
        .S(out));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h40)) 
    sig_sm_pop_input_reg_i_1
       (.I0(sig_calc_error_pushed_reg_0),
        .I1(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[5] ),
        .I2(sig_parent_done),
        .O(sig_sm_pop_input_reg_ns));
  FDRE #(
    .INIT(1'b0)) 
    sig_sm_pop_input_reg_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_sm_pop_input_reg_ns),
        .Q(sig_sm_pop_input_reg),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[0] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_mbaa_addr_cntr_slice[0]),
        .Q(\sig_xfer_addr_reg_reg[31]_0 [0]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[10] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[10] ),
        .Q(\sig_xfer_addr_reg_reg[31]_0 [10]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[11] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[11] ),
        .Q(\sig_xfer_addr_reg_reg[31]_0 [11]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[12] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[12] ),
        .Q(\sig_xfer_addr_reg_reg[31]_0 [12]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[13] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[13] ),
        .Q(\sig_xfer_addr_reg_reg[31]_0 [13]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[14] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[14] ),
        .Q(\sig_xfer_addr_reg_reg[31]_0 [14]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[15] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(p_1_in2_in),
        .Q(\sig_xfer_addr_reg_reg[31]_0 [15]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[16] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg [0]),
        .Q(\sig_xfer_addr_reg_reg[31]_0 [16]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[17] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg [1]),
        .Q(\sig_xfer_addr_reg_reg[31]_0 [17]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[18] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg [2]),
        .Q(\sig_xfer_addr_reg_reg[31]_0 [18]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[19] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg [3]),
        .Q(\sig_xfer_addr_reg_reg[31]_0 [19]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[1] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_mbaa_addr_cntr_slice[1]),
        .Q(\sig_xfer_addr_reg_reg[31]_0 [1]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[20] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg [4]),
        .Q(\sig_xfer_addr_reg_reg[31]_0 [20]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[21] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg [5]),
        .Q(\sig_xfer_addr_reg_reg[31]_0 [21]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[22] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg [6]),
        .Q(\sig_xfer_addr_reg_reg[31]_0 [22]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[23] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg [7]),
        .Q(\sig_xfer_addr_reg_reg[31]_0 [23]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[24] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg [8]),
        .Q(\sig_xfer_addr_reg_reg[31]_0 [24]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[25] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg [9]),
        .Q(\sig_xfer_addr_reg_reg[31]_0 [25]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[26] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg [10]),
        .Q(\sig_xfer_addr_reg_reg[31]_0 [26]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[27] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg [11]),
        .Q(\sig_xfer_addr_reg_reg[31]_0 [27]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[28] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg [12]),
        .Q(\sig_xfer_addr_reg_reg[31]_0 [28]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[29] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg [13]),
        .Q(\sig_xfer_addr_reg_reg[31]_0 [29]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[2] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_mbaa_addr_cntr_slice[2]),
        .Q(\sig_xfer_addr_reg_reg[31]_0 [2]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[30] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg [14]),
        .Q(\sig_xfer_addr_reg_reg[31]_0 [30]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[31] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg [15]),
        .Q(\sig_xfer_addr_reg_reg[31]_0 [31]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[3] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_mbaa_addr_cntr_slice[3]),
        .Q(\sig_xfer_addr_reg_reg[31]_0 [3]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[4] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_mbaa_addr_cntr_slice[4]),
        .Q(\sig_xfer_addr_reg_reg[31]_0 [4]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[5] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_mbaa_addr_cntr_slice[5]),
        .Q(\sig_xfer_addr_reg_reg[31]_0 [5]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[6] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[6] ),
        .Q(\sig_xfer_addr_reg_reg[31]_0 [6]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[7] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[7] ),
        .Q(\sig_xfer_addr_reg_reg[31]_0 [7]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[8] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[8] ),
        .Q(\sig_xfer_addr_reg_reg[31]_0 [8]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[9] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_lsh_reg_n_0_[9] ),
        .Q(\sig_xfer_addr_reg_reg[31]_0 [9]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_xfer_calc_err_reg_reg
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_calc_error_reg_reg_0),
        .Q(sig_pcc2data_calc_error),
        .R(sig_xfer_addr_reg0));
  LUT3 #(
    .INIT(8'hFE)) 
    sig_xfer_cmd_cmplt_reg_i_1
       (.I0(sig_calc_error_reg_reg_0),
        .I1(sig_xfer_cmd_cmplt_reg_i_2_n_0),
        .I2(sig_xfer_cmd_cmplt_reg_i_3_n_0),
        .O(sig_xfer_cmd_cmplt_reg0));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    sig_xfer_cmd_cmplt_reg_i_10
       (.I0(sig_mbaa_addr_cntr_slice[5]),
        .I1(sig_mbaa_addr_cntr_slice[4]),
        .I2(sig_mbaa_addr_cntr_slice[2]),
        .I3(sig_mbaa_addr_cntr_slice[0]),
        .I4(sig_mbaa_addr_cntr_slice[1]),
        .I5(sig_mbaa_addr_cntr_slice[3]),
        .O(sig_xfer_cmd_cmplt_reg_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    sig_xfer_cmd_cmplt_reg_i_11
       (.I0(\sig_btt_cntr_reg[11]_0 [5]),
        .I1(\sig_btt_cntr_reg[11]_0 [4]),
        .O(sig_xfer_cmd_cmplt_reg_i_11_n_0));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    sig_xfer_cmd_cmplt_reg_i_12
       (.I0(sig_mbaa_addr_cntr_slice[2]),
        .I1(sig_mbaa_addr_cntr_slice[0]),
        .I2(sig_mbaa_addr_cntr_slice[1]),
        .I3(sig_mbaa_addr_cntr_slice[3]),
        .I4(sig_mbaa_addr_cntr_slice[4]),
        .I5(\sig_btt_cntr_reg[11]_0 [4]),
        .O(sig_xfer_cmd_cmplt_reg_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h6)) 
    sig_xfer_cmd_cmplt_reg_i_13
       (.I0(\sig_btt_cntr_reg[11]_0 [5]),
        .I1(sig_mbaa_addr_cntr_slice[5]),
        .O(sig_xfer_cmd_cmplt_reg_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    sig_xfer_cmd_cmplt_reg_i_14
       (.I0(\sig_btt_cntr_reg[11]_0 [3]),
        .I1(\sig_btt_cntr_reg[11]_0 [2]),
        .I2(\sig_btt_cntr_reg[11]_0 [1]),
        .I3(\sig_btt_cntr_reg[11]_0 [0]),
        .O(sig_xfer_cmd_cmplt_reg_i_14_n_0));
  LUT6 #(
    .INIT(64'h0010100001000000)) 
    sig_xfer_cmd_cmplt_reg_i_15
       (.I0(sig_mbaa_addr_cntr_slice[1]),
        .I1(sig_mbaa_addr_cntr_slice[0]),
        .I2(sig_mbaa_addr_cntr_slice[2]),
        .I3(sig_mbaa_addr_cntr_slice[3]),
        .I4(\sig_btt_cntr_reg[11]_0 [3]),
        .I5(\sig_btt_cntr_reg[11]_0 [2]),
        .O(sig_xfer_cmd_cmplt_reg_i_15_n_0));
  LUT6 #(
    .INIT(64'h0080800000000000)) 
    sig_xfer_cmd_cmplt_reg_i_2
       (.I0(sig_xfer_eof_reg_i_4_n_0),
        .I1(sig_xfer_cmd_cmplt_reg_i_4_n_0),
        .I2(sig_xfer_cmd_cmplt_reg_i_5_n_0),
        .I3(sig_mbaa_addr_cntr_slice[2]),
        .I4(\sig_btt_cntr_reg[11]_0 [2]),
        .I5(sig_xfer_eof_reg_i_2_n_0),
        .O(sig_xfer_cmd_cmplt_reg_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFEEEEEE)) 
    sig_xfer_cmd_cmplt_reg_i_3
       (.I0(sig_xfer_cmd_cmplt_reg_i_6_n_0),
        .I1(sig_xfer_cmd_cmplt_reg_i_7_n_0),
        .I2(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_4_n_0 ),
        .I3(sig_btt_lt_b2mbaa1),
        .I4(sig_xfer_cmd_cmplt_reg_i_8_n_0),
        .I5(sig_xfer_cmd_cmplt_reg_i_9_n_0),
        .O(sig_xfer_cmd_cmplt_reg_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    sig_xfer_cmd_cmplt_reg_i_4
       (.I0(\sig_btt_cntr_reg[11]_0 [4]),
        .I1(sig_mbaa_addr_cntr_slice[4]),
        .O(sig_xfer_cmd_cmplt_reg_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sig_xfer_cmd_cmplt_reg_i_5
       (.I0(\sig_btt_cntr_reg[11]_0 [3]),
        .I1(sig_mbaa_addr_cntr_slice[3]),
        .O(sig_xfer_cmd_cmplt_reg_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    sig_xfer_cmd_cmplt_reg_i_6
       (.I0(sig_xfer_is_seq_reg_i_11_n_0),
        .I1(sig_xfer_cmd_cmplt_reg_i_8_n_0),
        .I2(\sig_btt_cntr_reg[11]_0 [6]),
        .I3(sig_mbaa_addr_cntr_slice[4]),
        .I4(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2_n_0 ),
        .I5(sig_mbaa_addr_cntr_slice[5]),
        .O(sig_xfer_cmd_cmplt_reg_i_6_n_0));
  LUT6 #(
    .INIT(64'h000000000F080808)) 
    sig_xfer_cmd_cmplt_reg_i_7
       (.I0(sig_xfer_cmd_cmplt_reg_i_10_n_0),
        .I1(sig_xfer_cmd_cmplt_reg_i_11_n_0),
        .I2(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_4_n_0 ),
        .I3(sig_xfer_cmd_cmplt_reg_i_12_n_0),
        .I4(sig_xfer_cmd_cmplt_reg_i_13_n_0),
        .I5(sig_xfer_cmd_cmplt_reg_i_14_n_0),
        .O(sig_xfer_cmd_cmplt_reg_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    sig_xfer_cmd_cmplt_reg_i_8
       (.I0(\sig_btt_cntr_reg[11]_0 [5]),
        .I1(\sig_btt_cntr_reg[11]_0 [4]),
        .I2(\sig_btt_cntr_reg[11]_0 [0]),
        .I3(\sig_btt_cntr_reg[11]_0 [1]),
        .I4(\sig_btt_cntr_reg[11]_0 [2]),
        .I5(\sig_btt_cntr_reg[11]_0 [3]),
        .O(sig_xfer_cmd_cmplt_reg_i_8_n_0));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    sig_xfer_cmd_cmplt_reg_i_9
       (.I0(sig_xfer_cmd_cmplt_reg_i_4_n_0),
        .I1(sig_xfer_cmd_cmplt_reg_i_15_n_0),
        .I2(\sig_btt_cntr_reg[11]_0 [0]),
        .I3(\sig_btt_cntr_reg[11]_0 [1]),
        .I4(sig_xfer_cmd_cmplt_reg_i_13_n_0),
        .I5(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_4_n_0 ),
        .O(sig_xfer_cmd_cmplt_reg_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_xfer_cmd_cmplt_reg_reg
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_xfer_cmd_cmplt_reg0),
        .Q(sig_pcc2data_cmd_cmplt),
        .R(sig_xfer_addr_reg0));
  LUT5 #(
    .INIT(32'hF8888888)) 
    sig_xfer_eof_reg_i_1
       (.I0(sig_input_eof_reg),
        .I1(sig_xfer_cmd_cmplt_reg_i_3_n_0),
        .I2(sig_xfer_eof_reg_i_2_n_0),
        .I3(sig_xfer_eof_reg_i_3_n_0),
        .I4(sig_xfer_eof_reg_i_4_n_0),
        .O(sig_xfer_eof_reg0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h06)) 
    sig_xfer_eof_reg_i_2
       (.I0(sig_mbaa_addr_cntr_slice[5]),
        .I1(\sig_btt_cntr_reg[11]_0 [5]),
        .I2(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_4_n_0 ),
        .O(sig_xfer_eof_reg_i_2_n_0));
  LUT6 #(
    .INIT(64'h0660000000000000)) 
    sig_xfer_eof_reg_i_3
       (.I0(\sig_btt_cntr_reg[11]_0 [3]),
        .I1(sig_mbaa_addr_cntr_slice[3]),
        .I2(\sig_btt_cntr_reg[11]_0 [2]),
        .I3(sig_mbaa_addr_cntr_slice[2]),
        .I4(sig_input_eof_reg),
        .I5(sig_xfer_cmd_cmplt_reg_i_4_n_0),
        .O(sig_xfer_eof_reg_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h1880)) 
    sig_xfer_eof_reg_i_4
       (.I0(\sig_btt_cntr_reg[11]_0 [0]),
        .I1(sig_mbaa_addr_cntr_slice[0]),
        .I2(\sig_btt_cntr_reg[11]_0 [1]),
        .I3(sig_mbaa_addr_cntr_slice[1]),
        .O(sig_xfer_eof_reg_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_xfer_eof_reg_reg
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_xfer_eof_reg0),
        .Q(sig_pcc2data_eof),
        .R(sig_xfer_addr_reg0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    sig_xfer_is_seq_reg_i_1
       (.I0(sig_xfer_is_seq_reg_i_2_n_0),
        .I1(sig_xfer_is_seq_reg_i_3_n_0),
        .I2(sig_xfer_is_seq_reg_i_4_n_0),
        .I3(sig_xfer_is_seq_reg_i_5_n_0),
        .I4(sig_xfer_is_seq_reg_i_6_n_0),
        .I5(sig_xfer_is_seq_reg_i_7_n_0),
        .O(sig_xfer_is_seq_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h9)) 
    sig_xfer_is_seq_reg_i_10
       (.I0(sig_mbaa_addr_cntr_slice[3]),
        .I1(\sig_btt_cntr_reg[11]_0 [3]),
        .O(sig_xfer_is_seq_reg_i_10_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    sig_xfer_is_seq_reg_i_11
       (.I0(\sig_btt_cntr_reg[11]_0 [7]),
        .I1(\sig_btt_cntr_reg[11]_0 [10]),
        .I2(\sig_btt_cntr_reg[11]_0 [11]),
        .I3(\sig_btt_cntr_reg[11]_0 [9]),
        .I4(\sig_btt_cntr_reg[11]_0 [8]),
        .O(sig_xfer_is_seq_reg_i_11_n_0));
  LUT6 #(
    .INIT(64'h00000000999F9F96)) 
    sig_xfer_is_seq_reg_i_2
       (.I0(\sig_btt_cntr_reg[11]_0 [4]),
        .I1(sig_mbaa_addr_cntr_slice[4]),
        .I2(sig_xfer_is_seq_reg_i_8_n_0),
        .I3(sig_mbaa_addr_cntr_slice[3]),
        .I4(\sig_btt_cntr_reg[11]_0 [3]),
        .I5(sig_btt_lt_b2mbaa1),
        .O(sig_xfer_is_seq_reg_i_2_n_0));
  LUT6 #(
    .INIT(64'h009200FF00FF0092)) 
    sig_xfer_is_seq_reg_i_3
       (.I0(\sig_btt_cntr_reg[11]_0 [5]),
        .I1(sig_mbaa_addr_cntr_slice[5]),
        .I2(sig_xfer_is_seq_reg_i_9_n_0),
        .I3(sig_btt_lt_b2mbaa1),
        .I4(\sig_btt_cntr_reg[11]_0 [0]),
        .I5(sig_mbaa_addr_cntr_slice[0]),
        .O(sig_xfer_is_seq_reg_i_3_n_0));
  LUT6 #(
    .INIT(64'h00000000EBEBFFBC)) 
    sig_xfer_is_seq_reg_i_4
       (.I0(sig_xfer_is_seq_reg_i_10_n_0),
        .I1(sig_mbaa_addr_cntr_slice[2]),
        .I2(\sig_btt_cntr_reg[11]_0 [2]),
        .I3(\sig_btt_cntr_reg[11]_0 [1]),
        .I4(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_2_n_0 ),
        .I5(sig_btt_lt_b2mbaa1),
        .O(sig_xfer_is_seq_reg_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    sig_xfer_is_seq_reg_i_5
       (.I0(\sig_btt_cntr_reg[11]_0 [6]),
        .I1(sig_xfer_cmd_cmplt_reg_i_8_n_0),
        .O(sig_xfer_is_seq_reg_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h0000FFFD)) 
    sig_xfer_is_seq_reg_i_6
       (.I0(\sig_btt_cntr_reg[11]_0 [6]),
        .I1(sig_mbaa_addr_cntr_slice[4]),
        .I2(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2_n_0 ),
        .I3(sig_mbaa_addr_cntr_slice[5]),
        .I4(sig_xfer_cmd_cmplt_reg_i_8_n_0),
        .O(sig_xfer_is_seq_reg_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hAAAAEBAE)) 
    sig_xfer_is_seq_reg_i_7
       (.I0(sig_xfer_is_seq_reg_i_11_n_0),
        .I1(sig_mbaa_addr_cntr_slice[1]),
        .I2(\sig_btt_cntr_reg[11]_0 [1]),
        .I3(sig_mbaa_addr_cntr_slice[0]),
        .I4(sig_btt_lt_b2mbaa1),
        .O(sig_xfer_is_seq_reg_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    sig_xfer_is_seq_reg_i_8
       (.I0(sig_mbaa_addr_cntr_slice[1]),
        .I1(sig_mbaa_addr_cntr_slice[0]),
        .I2(sig_mbaa_addr_cntr_slice[2]),
        .O(sig_xfer_is_seq_reg_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    sig_xfer_is_seq_reg_i_9
       (.I0(sig_mbaa_addr_cntr_slice[3]),
        .I1(sig_mbaa_addr_cntr_slice[1]),
        .I2(sig_mbaa_addr_cntr_slice[0]),
        .I3(sig_mbaa_addr_cntr_slice[2]),
        .I4(sig_mbaa_addr_cntr_slice[4]),
        .O(sig_xfer_is_seq_reg_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_xfer_is_seq_reg_reg
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_xfer_is_seq_reg_i_1_n_0),
        .Q(sig_pcc2data_sequential),
        .R(sig_xfer_addr_reg0));
  LUT3 #(
    .INIT(8'hE1)) 
    \sig_xfer_len_reg[0]_i_1 
       (.I0(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[1] ),
        .I1(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[0] ),
        .I2(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[2] ),
        .O(\sig_xfer_len_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \sig_xfer_len_reg[1]_i_1 
       (.I0(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[2] ),
        .I1(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[0] ),
        .I2(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[1] ),
        .I3(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[3] ),
        .O(\sig_xfer_len_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \sig_xfer_len_reg[2]_i_1 
       (.I0(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[3] ),
        .I1(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[1] ),
        .I2(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[0] ),
        .I3(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[2] ),
        .I4(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[4] ),
        .O(\sig_xfer_len_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000001)) 
    \sig_xfer_len_reg[3]_i_1 
       (.I0(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[4] ),
        .I1(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[2] ),
        .I2(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[0] ),
        .I3(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[1] ),
        .I4(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[3] ),
        .I5(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[5] ),
        .O(\sig_xfer_len_reg[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_len_reg_reg[0] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\sig_xfer_len_reg[0]_i_1_n_0 ),
        .Q(\sig_xfer_len_reg_reg[3]_1 [0]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_len_reg_reg[1] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\sig_xfer_len_reg[1]_i_1_n_0 ),
        .Q(\sig_xfer_len_reg_reg[3]_1 [1]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_len_reg_reg[2] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\sig_xfer_len_reg[2]_i_1_n_0 ),
        .Q(\sig_xfer_len_reg_reg[3]_1 [2]),
        .R(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_len_reg_reg[3] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\sig_xfer_len_reg[3]_i_1_n_0 ),
        .Q(\sig_xfer_len_reg_reg[3]_1 [3]),
        .R(sig_xfer_addr_reg0));
  LUT6 #(
    .INIT(64'hBABAAAAAFFBAAAAA)) 
    sig_xfer_reg_empty_i_1
       (.I0(\sig_xfer_len_reg_reg[0]_0 ),
        .I1(sig_pcc2addr_cmd_valid),
        .I2(sig_rdc2pcc_cmd_ready),
        .I3(sig_xfer_reg_empty_i_4_n_0),
        .I4(sig_xfer_reg_empty_i_5_n_0),
        .I5(sig_pcc2data_cmd_valid),
        .O(sig_xfer_addr_reg0));
  LUT2 #(
    .INIT(4'h8)) 
    sig_xfer_reg_empty_i_2
       (.I0(sig_xfer_reg_empty),
        .I1(sig_ld_xfer_reg),
        .O(sig_push_xfer_reg15_out));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hCA0A0A0A)) 
    sig_xfer_reg_empty_i_4
       (.I0(sig_cmd2dre_valid_reg_n_0),
        .I1(sig_cmd2all_doing_read),
        .I2(sig_pcc2addr_cmd_valid),
        .I3(sig_addr2stat_cmd_fifo_empty),
        .I4(sig_llink2rd_allow_addr_req),
        .O(sig_xfer_reg_empty_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h7)) 
    sig_xfer_reg_empty_i_5
       (.I0(sig_ld_xfer_reg),
        .I1(sig_xfer_reg_empty),
        .O(sig_xfer_reg_empty_i_5_n_0));
  LUT6 #(
    .INIT(64'h1500000000000000)) 
    sig_xfer_reg_empty_i_7
       (.I0(sig_next_calc_error_reg),
        .I1(sig_ld_xfer_reg),
        .I2(sig_xfer_reg_empty),
        .I3(sig_llink2rd_allow_addr_req),
        .I4(sig_addr2stat_cmd_fifo_empty),
        .I5(sig_pcc2addr_cmd_valid),
        .O(sig_next_calc_error_reg_reg));
  FDSE #(
    .INIT(1'b0)) 
    sig_xfer_reg_empty_reg
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(1'b0),
        .Q(sig_xfer_reg_empty),
        .S(sig_xfer_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_xfer_type_reg_reg
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_input_burst_type_reg),
        .Q(sig_pcc2addr_burst),
        .R(sig_xfer_addr_reg0));
endmodule

module design_1_myip_burst_read_test_1_0_axi_master_burst_rd_llink
   (sig_llink2cmd_rd_busy,
    sig_llink2rd_allow_addr_req,
    sig_llink_busy0,
    E,
    \ip2bus_inputs[2] ,
    ip2bus_otputs,
    out,
    sig_rdwr2llink_int_err,
    m00_axi_aclk,
    sig_llink_busy_reg_0,
    ip2bus_inputs,
    sig_cmd2all_doing_read,
    sig_doing_read_reg,
    \sig_data_reg_out_reg[0] ,
    \ip2bus_otputs[3] );
  output sig_llink2cmd_rd_busy;
  output sig_llink2rd_allow_addr_req;
  output sig_llink_busy0;
  output [0:0]E;
  output \ip2bus_inputs[2] ;
  output [0:0]ip2bus_otputs;
  input out;
  input sig_rdwr2llink_int_err;
  input m00_axi_aclk;
  input sig_llink_busy_reg_0;
  input [0:0]ip2bus_inputs;
  input sig_cmd2all_doing_read;
  input sig_doing_read_reg;
  input \sig_data_reg_out_reg[0] ;
  input \ip2bus_otputs[3] ;

  wire [0:0]E;
  wire \I_WR_LLINK_ADAPTER/sig_wr_error_reg ;
  wire [0:0]ip2bus_inputs;
  wire \ip2bus_inputs[2] ;
  wire [0:0]ip2bus_otputs;
  wire \ip2bus_otputs[3] ;
  wire m00_axi_aclk;
  wire out;
  wire sig_allow_rd_requests_i_1_n_0;
  wire sig_cmd2all_doing_read;
  wire \sig_data_reg_out_reg[0] ;
  wire sig_doing_read_reg;
  wire sig_llink2cmd_rd_busy;
  wire sig_llink2rd_allow_addr_req;
  wire sig_llink_busy0;
  wire sig_llink_busy_reg_0;
  wire sig_rd_discontinue;
  wire sig_rd_discontinue_i_1_n_0;
  wire sig_rdwr2llink_int_err;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h07)) 
    \ip2bus_otputs[3]_INST_0 
       (.I0(sig_rd_discontinue),
        .I1(sig_llink2cmd_rd_busy),
        .I2(\ip2bus_otputs[3] ),
        .O(ip2bus_otputs));
  LUT6 #(
    .INIT(64'h4454445400004454)) 
    sig_allow_rd_requests_i_1
       (.I0(out),
        .I1(sig_llink2rd_allow_addr_req),
        .I2(sig_llink2cmd_rd_busy),
        .I3(ip2bus_inputs),
        .I4(sig_cmd2all_doing_read),
        .I5(sig_doing_read_reg),
        .O(sig_allow_rd_requests_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_allow_rd_requests_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_allow_rd_requests_i_1_n_0),
        .Q(sig_llink2rd_allow_addr_req),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h2F)) 
    \sig_data_reg_out[31]_i_1 
       (.I0(sig_llink2cmd_rd_busy),
        .I1(ip2bus_inputs),
        .I2(\sig_data_reg_out_reg[0] ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFF40)) 
    sig_llink_busy_i_3
       (.I0(ip2bus_inputs),
        .I1(sig_llink2cmd_rd_busy),
        .I2(sig_rd_discontinue),
        .I3(out),
        .O(sig_llink_busy0));
  FDRE #(
    .INIT(1'b0)) 
    sig_llink_busy_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_llink_busy_reg_0),
        .Q(sig_llink2cmd_rd_busy),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0F020F0000020F00)) 
    sig_rd_discontinue_i_1
       (.I0(sig_rdwr2llink_int_err),
        .I1(\I_WR_LLINK_ADAPTER/sig_wr_error_reg ),
        .I2(out),
        .I3(sig_rd_discontinue),
        .I4(sig_llink2cmd_rd_busy),
        .I5(ip2bus_inputs),
        .O(sig_rd_discontinue_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_rd_discontinue_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_rd_discontinue_i_1_n_0),
        .Q(sig_rd_discontinue),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_rd_error_reg_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_rdwr2llink_int_err),
        .Q(\I_WR_LLINK_ADAPTER/sig_wr_error_reg ),
        .R(out));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hB)) 
    sig_s_ready_dup_i_2
       (.I0(ip2bus_inputs),
        .I1(sig_llink2cmd_rd_busy),
        .O(\ip2bus_inputs[2] ));
endmodule

module design_1_myip_burst_read_test_1_0_axi_master_burst_rd_status_cntl
   (sig_rsc2stat_status_valid,
    sig_rsc2rdc_ready,
    sig_rd_sts_interr_reg_reg_0,
    sig_rd_sts_decerr_reg_reg_0,
    sig_stat_error,
    sig_rd_sts_slverr_reg_reg_0,
    sig_rd_sts_tag_reg0,
    sig_push_rd_sts_reg,
    m00_axi_aclk,
    sig_rd_sts_decerr_reg0,
    sig_rdc2rsc_calc_err,
    sig_rdc2rsc_slverr,
    sig_error_sh_reg_reg,
    ip2bus_otputs);
  output sig_rsc2stat_status_valid;
  output sig_rsc2rdc_ready;
  output sig_rd_sts_interr_reg_reg_0;
  output [0:0]sig_rd_sts_decerr_reg_reg_0;
  output sig_stat_error;
  output sig_rd_sts_slverr_reg_reg_0;
  input sig_rd_sts_tag_reg0;
  input sig_push_rd_sts_reg;
  input m00_axi_aclk;
  input sig_rd_sts_decerr_reg0;
  input sig_rdc2rsc_calc_err;
  input sig_rdc2rsc_slverr;
  input sig_error_sh_reg_reg;
  input [0:0]ip2bus_otputs;

  wire [0:0]ip2bus_otputs;
  wire m00_axi_aclk;
  wire sig_error_sh_reg_reg;
  wire sig_push_rd_sts_reg;
  wire sig_rd_sts_decerr_reg0;
  wire [0:0]sig_rd_sts_decerr_reg_reg_0;
  wire sig_rd_sts_interr_reg0;
  wire sig_rd_sts_interr_reg_reg_0;
  wire sig_rd_sts_slverr_reg0;
  wire sig_rd_sts_slverr_reg_reg_0;
  wire sig_rd_sts_tag_reg0;
  wire sig_rdc2rsc_calc_err;
  wire sig_rdc2rsc_slverr;
  wire sig_rsc2rdc_ready;
  wire [6:6]sig_rsc2stat_status;
  wire sig_rsc2stat_status_valid;
  wire sig_stat_error;

  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'hFFFF00FE)) 
    sig_error_sh_reg_i_1
       (.I0(sig_rsc2stat_status),
        .I1(sig_rd_sts_decerr_reg_reg_0),
        .I2(sig_rd_sts_interr_reg_reg_0),
        .I3(sig_error_sh_reg_reg),
        .I4(ip2bus_otputs),
        .O(sig_rd_sts_slverr_reg_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_rd_sts_decerr_reg_reg
       (.C(m00_axi_aclk),
        .CE(sig_push_rd_sts_reg),
        .D(sig_rd_sts_decerr_reg0),
        .Q(sig_rd_sts_decerr_reg_reg_0),
        .R(sig_rd_sts_tag_reg0));
  LUT2 #(
    .INIT(4'hE)) 
    sig_rd_sts_interr_reg_i_1
       (.I0(sig_rd_sts_interr_reg_reg_0),
        .I1(sig_rdc2rsc_calc_err),
        .O(sig_rd_sts_interr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_rd_sts_interr_reg_reg
       (.C(m00_axi_aclk),
        .CE(sig_push_rd_sts_reg),
        .D(sig_rd_sts_interr_reg0),
        .Q(sig_rd_sts_interr_reg_reg_0),
        .R(sig_rd_sts_tag_reg0));
  FDSE #(
    .INIT(1'b0)) 
    sig_rd_sts_reg_empty_reg
       (.C(m00_axi_aclk),
        .CE(sig_push_rd_sts_reg),
        .D(1'b0),
        .Q(sig_rsc2rdc_ready),
        .S(sig_rd_sts_tag_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_rd_sts_reg_full_reg
       (.C(m00_axi_aclk),
        .CE(sig_push_rd_sts_reg),
        .D(1'b1),
        .Q(sig_rsc2stat_status_valid),
        .R(sig_rd_sts_tag_reg0));
  LUT2 #(
    .INIT(4'hE)) 
    sig_rd_sts_slverr_reg_i_1
       (.I0(sig_rsc2stat_status),
        .I1(sig_rdc2rsc_slverr),
        .O(sig_rd_sts_slverr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_rd_sts_slverr_reg_reg
       (.C(m00_axi_aclk),
        .CE(sig_push_rd_sts_reg),
        .D(sig_rd_sts_slverr_reg0),
        .Q(sig_rsc2stat_status),
        .R(sig_rd_sts_tag_reg0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    sig_stat_error_reg_i_2
       (.I0(sig_rsc2stat_status),
        .I1(sig_rd_sts_decerr_reg_reg_0),
        .I2(sig_rd_sts_interr_reg_reg_0),
        .O(sig_stat_error));
endmodule

module design_1_myip_burst_read_test_1_0_axi_master_burst_rd_wr_cntlr
   (sig_pcc2all_calc_err,
    sig_m_valid_dup_reg,
    sig_m_valid_out_reg,
    m00_axi_wvalid,
    m00_axi_arsize,
    m00_axi_arburst,
    m00_axi_arvalid,
    sig_rsc2stat_status_valid,
    sig_rd_sts_interr_reg_reg,
    sig_doing_read_reg,
    sig_input_reg_empty_reg,
    sig_pcc2data_cmd_valid,
    sig_calc_error_pushed,
    m00_axi_wstrb,
    SR,
    sig_cmd_full_reg_reg,
    Q,
    m00_axi_rready,
    sig_stat_error,
    sig_rd_sts_slverr_reg_reg,
    sig_m_valid_out_reg_0,
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[1] ,
    bus2ip_mstrd_d,
    m00_axi_araddr,
    m00_axi_arlen,
    m00_axi_bready,
    out,
    m00_axi_aclk,
    sig_rd_sts_tag_reg0,
    sig_cmd2all_doing_read,
    sig_calc_error_reg_reg,
    sig_cmd2pcc_cmd_valid,
    m00_axi_bvalid,
    sig_cmd_full_reg_reg_0,
    sig_cmd_full_reg_reg_1,
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[15] ,
    D,
    sig_llink2rd_allow_addr_req,
    sig_status_reg_empty,
    sig_next_cmd_cmplt_reg_reg,
    sig_s_ready_out_reg,
    m00_axi_rvalid,
    m00_axi_rlast,
    m00_axi_rresp,
    m00_axi_wready,
    m00_axi_arready,
    m00_axi_rdata,
    sig_error_sh_reg_reg,
    ip2bus_otputs,
    sig_llink2cmd_rd_busy,
    ip2bus_inputs,
    sig_llink_busy0,
    E,
    S,
    \sig_btt_cntr_reg[11] ,
    sig_cmd_type_req,
    \sig_btt_cntr_reg[7] );
  output sig_pcc2all_calc_err;
  output sig_m_valid_dup_reg;
  output sig_m_valid_out_reg;
  output m00_axi_wvalid;
  output [0:0]m00_axi_arsize;
  output [0:0]m00_axi_arburst;
  output m00_axi_arvalid;
  output sig_rsc2stat_status_valid;
  output [0:0]sig_rd_sts_interr_reg_reg;
  output sig_doing_read_reg;
  output sig_input_reg_empty_reg;
  output sig_pcc2data_cmd_valid;
  output sig_calc_error_pushed;
  output [0:0]m00_axi_wstrb;
  output [0:0]SR;
  output sig_cmd_full_reg_reg;
  output [4:0]Q;
  output m00_axi_rready;
  output sig_stat_error;
  output sig_rd_sts_slverr_reg_reg;
  output sig_m_valid_out_reg_0;
  output [1:0]\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[1] ;
  output [31:0]bus2ip_mstrd_d;
  output [31:0]m00_axi_araddr;
  output [3:0]m00_axi_arlen;
  output m00_axi_bready;
  input out;
  input m00_axi_aclk;
  input sig_rd_sts_tag_reg0;
  input sig_cmd2all_doing_read;
  input sig_calc_error_reg_reg;
  input sig_cmd2pcc_cmd_valid;
  input m00_axi_bvalid;
  input sig_cmd_full_reg_reg_0;
  input sig_cmd_full_reg_reg_1;
  input [29:0]\GEN_ADDR_32.sig_addr_cntr_msh_reg[15] ;
  input [1:0]D;
  input sig_llink2rd_allow_addr_req;
  input sig_status_reg_empty;
  input sig_next_cmd_cmplt_reg_reg;
  input sig_s_ready_out_reg;
  input m00_axi_rvalid;
  input m00_axi_rlast;
  input [1:0]m00_axi_rresp;
  input m00_axi_wready;
  input m00_axi_arready;
  input [31:0]m00_axi_rdata;
  input sig_error_sh_reg_reg;
  input [0:0]ip2bus_otputs;
  input sig_llink2cmd_rd_busy;
  input [0:0]ip2bus_inputs;
  input sig_llink_busy0;
  input [0:0]E;
  input [0:0]S;
  input [3:0]\sig_btt_cntr_reg[11] ;
  input sig_cmd_type_req;
  input [6:0]\sig_btt_cntr_reg[7] ;

  wire [1:0]D;
  wire [0:0]E;
  wire [29:0]\GEN_ADDR_32.sig_addr_cntr_msh_reg[15] ;
  wire [1:0]\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[1] ;
  wire \GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/sig_init_reg ;
  wire I_MSTR_PCC_n_10;
  wire I_MSTR_PCC_n_11;
  wire I_MSTR_PCC_n_12;
  wire I_MSTR_PCC_n_13;
  wire I_MSTR_PCC_n_14;
  wire I_MSTR_PCC_n_15;
  wire I_MSTR_PCC_n_16;
  wire I_MSTR_PCC_n_17;
  wire I_MSTR_PCC_n_18;
  wire I_MSTR_PCC_n_20;
  wire I_MSTR_PCC_n_21;
  wire I_MSTR_PCC_n_22;
  wire I_MSTR_PCC_n_23;
  wire I_MSTR_PCC_n_25;
  wire I_MSTR_PCC_n_26;
  wire I_MSTR_PCC_n_27;
  wire I_MSTR_PCC_n_28;
  wire I_MSTR_PCC_n_29;
  wire I_MSTR_PCC_n_30;
  wire I_MSTR_PCC_n_31;
  wire I_MSTR_PCC_n_32;
  wire I_MSTR_PCC_n_33;
  wire I_MSTR_PCC_n_34;
  wire I_MSTR_PCC_n_35;
  wire I_MSTR_PCC_n_36;
  wire I_MSTR_PCC_n_37;
  wire I_MSTR_PCC_n_38;
  wire I_MSTR_PCC_n_39;
  wire I_MSTR_PCC_n_40;
  wire I_MSTR_PCC_n_42;
  wire I_MSTR_PCC_n_56;
  wire I_MSTR_PCC_n_8;
  wire I_MSTR_PCC_n_9;
  wire I_RD_DATA_CNTL_n_5;
  wire I_RD_DATA_CNTL_n_6;
  wire I_RD_DATA_CNTL_n_7;
  wire I_WR_STATUS_CNTLR_n_1;
  wire I_WR_STATUS_CNTLR_n_2;
  wire I_WR_STATUS_CNTLR_n_3;
  wire [4:0]Q;
  wire [0:0]S;
  wire [0:0]SR;
  wire [31:0]bus2ip_mstrd_d;
  wire \i_/i_/i__carry__0_n_0 ;
  wire \i_/i_/i__carry__0_n_1 ;
  wire \i_/i_/i__carry__0_n_2 ;
  wire \i_/i_/i__carry__0_n_3 ;
  wire \i_/i_/i__carry__0_n_4 ;
  wire \i_/i_/i__carry__0_n_5 ;
  wire \i_/i_/i__carry__0_n_6 ;
  wire \i_/i_/i__carry__0_n_7 ;
  wire \i_/i_/i__carry__1_n_0 ;
  wire \i_/i_/i__carry__1_n_1 ;
  wire \i_/i_/i__carry__1_n_2 ;
  wire \i_/i_/i__carry__1_n_3 ;
  wire \i_/i_/i__carry__1_n_4 ;
  wire \i_/i_/i__carry__1_n_5 ;
  wire \i_/i_/i__carry__1_n_6 ;
  wire \i_/i_/i__carry__1_n_7 ;
  wire \i_/i_/i__carry__2_n_1 ;
  wire \i_/i_/i__carry__2_n_2 ;
  wire \i_/i_/i__carry__2_n_3 ;
  wire \i_/i_/i__carry__2_n_4 ;
  wire \i_/i_/i__carry__2_n_5 ;
  wire \i_/i_/i__carry__2_n_6 ;
  wire \i_/i_/i__carry__2_n_7 ;
  wire \i_/i_/i__carry_n_0 ;
  wire \i_/i_/i__carry_n_1 ;
  wire \i_/i_/i__carry_n_2 ;
  wire \i_/i_/i__carry_n_3 ;
  wire \i_/i_/i__carry_n_4 ;
  wire \i_/i_/i__carry_n_5 ;
  wire \i_/i_/i__carry_n_6 ;
  wire \i_/i_/i__carry_n_7 ;
  wire [0:0]ip2bus_inputs;
  wire [0:0]ip2bus_otputs;
  wire m00_axi_aclk;
  wire [31:0]m00_axi_araddr;
  wire [0:0]m00_axi_arburst;
  wire [3:0]m00_axi_arlen;
  wire m00_axi_arready;
  wire [0:0]m00_axi_arsize;
  wire m00_axi_arvalid;
  wire m00_axi_bready;
  wire m00_axi_bvalid;
  wire [31:0]m00_axi_rdata;
  wire m00_axi_rlast;
  wire m00_axi_rready;
  wire [1:0]m00_axi_rresp;
  wire m00_axi_rvalid;
  wire m00_axi_wready;
  wire [0:0]m00_axi_wstrb;
  wire m00_axi_wvalid;
  wire out;
  wire p_0_in2_in;
  wire p_0_in3_in;
  wire p_0_in5_in;
  wire sig_addr2data_addr_posted;
  wire sig_addr2stat_cmd_fifo_empty;
  wire [6:0]sig_btt_cntr;
  wire \sig_btt_cntr[3]_i_6_n_0 ;
  wire \sig_btt_cntr[3]_i_7_n_0 ;
  wire \sig_btt_cntr[3]_i_8_n_0 ;
  wire \sig_btt_cntr[3]_i_9_n_0 ;
  wire \sig_btt_cntr[7]_i_6_n_0 ;
  wire \sig_btt_cntr[7]_i_7_n_0 ;
  wire \sig_btt_cntr[7]_i_8_n_0 ;
  wire [3:0]\sig_btt_cntr_reg[11] ;
  wire \sig_btt_cntr_reg[11]_i_1_n_1 ;
  wire \sig_btt_cntr_reg[11]_i_1_n_2 ;
  wire \sig_btt_cntr_reg[11]_i_1_n_3 ;
  wire \sig_btt_cntr_reg[11]_i_1_n_4 ;
  wire \sig_btt_cntr_reg[11]_i_1_n_5 ;
  wire \sig_btt_cntr_reg[11]_i_1_n_6 ;
  wire \sig_btt_cntr_reg[11]_i_1_n_7 ;
  wire \sig_btt_cntr_reg[3]_i_1_n_0 ;
  wire \sig_btt_cntr_reg[3]_i_1_n_1 ;
  wire \sig_btt_cntr_reg[3]_i_1_n_2 ;
  wire \sig_btt_cntr_reg[3]_i_1_n_3 ;
  wire \sig_btt_cntr_reg[3]_i_1_n_4 ;
  wire \sig_btt_cntr_reg[3]_i_1_n_5 ;
  wire \sig_btt_cntr_reg[3]_i_1_n_6 ;
  wire \sig_btt_cntr_reg[3]_i_1_n_7 ;
  wire [6:0]\sig_btt_cntr_reg[7] ;
  wire \sig_btt_cntr_reg[7]_i_1_n_0 ;
  wire \sig_btt_cntr_reg[7]_i_1_n_1 ;
  wire \sig_btt_cntr_reg[7]_i_1_n_2 ;
  wire \sig_btt_cntr_reg[7]_i_1_n_3 ;
  wire \sig_btt_cntr_reg[7]_i_1_n_4 ;
  wire \sig_btt_cntr_reg[7]_i_1_n_5 ;
  wire \sig_btt_cntr_reg[7]_i_1_n_6 ;
  wire \sig_btt_cntr_reg[7]_i_1_n_7 ;
  wire sig_calc_error_pushed;
  wire sig_calc_error_reg_reg;
  wire sig_cmd2all_doing_read;
  wire sig_cmd2pcc_cmd_valid;
  wire sig_cmd_full_reg_reg;
  wire sig_cmd_full_reg_reg_0;
  wire sig_cmd_full_reg_reg_1;
  wire sig_cmd_type_req;
  wire sig_doing_read_reg;
  wire sig_error_sh_reg_reg;
  wire sig_input_reg_empty_reg;
  wire sig_llink2cmd_rd_busy;
  wire sig_llink2rd_allow_addr_req;
  wire sig_llink_busy0;
  wire sig_llink_busy_i_2_n_0;
  wire sig_m_valid_dup_reg;
  wire sig_m_valid_out_reg;
  wire sig_m_valid_out_reg_0;
  wire sig_next_calc_error_reg;
  wire sig_next_cmd_cmplt_reg_reg;
  wire sig_next_eof_reg;
  wire [31:2]sig_pcc2addr_addr;
  wire [0:0]sig_pcc2addr_burst;
  wire sig_pcc2all_calc_err;
  wire sig_pcc2data_calc_error;
  wire sig_pcc2data_cmd_cmplt;
  wire sig_pcc2data_cmd_valid;
  wire sig_pcc2data_dre_src_align;
  wire sig_pcc2data_eof;
  wire [3:0]sig_pcc2data_len;
  wire [1:1]sig_pcc2data_saddr_lsb;
  wire sig_pcc2data_sequential;
  wire sig_push_addr_reg1_out;
  wire sig_push_rd_sts_reg;
  wire sig_rd_sts_decerr_reg0;
  wire [0:0]sig_rd_sts_interr_reg_reg;
  wire sig_rd_sts_slverr_reg_reg;
  wire sig_rd_sts_tag_reg0;
  wire sig_rdc2pcc_cmd_ready;
  wire sig_rdc2rdskid_tlast;
  wire sig_rdc2rsc_calc_err;
  wire sig_rdc2rsc_slverr;
  wire sig_rdskid2rdc_tready;
  wire sig_rsc2rdc_ready;
  wire [5:5]sig_rsc2stat_status;
  wire sig_rsc2stat_status_valid;
  wire sig_s_ready_out_reg;
  wire sig_stat_error;
  wire sig_status_reg_empty;
  wire [3:3]\NLW_i_/i_/i__carry__2_CO_UNCONNECTED ;
  wire [3:3]\NLW_sig_btt_cntr_reg[11]_i_1_CO_UNCONNECTED ;

  design_1_myip_burst_read_test_1_0_axi_master_burst_addr_cntl I_ADDR_CNTL
       (.Q({sig_pcc2addr_addr,sig_pcc2data_saddr_lsb,sig_pcc2data_dre_src_align}),
        .m00_axi_aclk(m00_axi_aclk),
        .m00_axi_araddr(m00_axi_araddr),
        .m00_axi_arburst(m00_axi_arburst),
        .m00_axi_arlen(m00_axi_arlen),
        .m00_axi_arready(m00_axi_arready),
        .m00_axi_arsize(m00_axi_arsize),
        .m00_axi_arvalid(m00_axi_arvalid),
        .out(sig_addr2data_addr_posted),
        .sig_addr2stat_cmd_fifo_empty(sig_addr2stat_cmd_fifo_empty),
        .sig_cmd2all_doing_read(sig_cmd2all_doing_read),
        .\sig_next_len_reg_reg[3]_0 (sig_pcc2data_len),
        .sig_pcc2addr_burst(sig_pcc2addr_burst),
        .sig_pcc2data_calc_error(sig_pcc2data_calc_error),
        .sig_posted_to_axi_reg_0(out),
        .sig_push_addr_reg1_out(sig_push_addr_reg1_out),
        .sig_rd_addr_valid_reg_reg_0(I_MSTR_PCC_n_23));
  design_1_myip_burst_read_test_1_0_axi_master_burst_pcc I_MSTR_PCC
       (.D(D),
        .DI({I_MSTR_PCC_n_8,I_MSTR_PCC_n_9,I_MSTR_PCC_n_10,I_MSTR_PCC_n_11}),
        .\GEN_ADDR_32.sig_addr_cntr_msh_reg[11]_0 ({I_MSTR_PCC_n_33,I_MSTR_PCC_n_34,I_MSTR_PCC_n_35,I_MSTR_PCC_n_36}),
        .\GEN_ADDR_32.sig_addr_cntr_msh_reg[11]_1 ({\i_/i_/i__carry__1_n_4 ,\i_/i_/i__carry__1_n_5 ,\i_/i_/i__carry__1_n_6 ,\i_/i_/i__carry__1_n_7 }),
        .\GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_0 ({I_MSTR_PCC_n_37,I_MSTR_PCC_n_38,I_MSTR_PCC_n_39,I_MSTR_PCC_n_40}),
        .\GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_1 ({\i_/i_/i__carry__2_n_4 ,\i_/i_/i__carry__2_n_5 ,\i_/i_/i__carry__2_n_6 ,\i_/i_/i__carry__2_n_7 }),
        .\GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_2 (\GEN_ADDR_32.sig_addr_cntr_msh_reg[15] ),
        .\GEN_ADDR_32.sig_addr_cntr_msh_reg[7]_0 ({I_MSTR_PCC_n_29,I_MSTR_PCC_n_30,I_MSTR_PCC_n_31,I_MSTR_PCC_n_32}),
        .\GEN_ADDR_32.sig_addr_cntr_msh_reg[7]_1 ({\i_/i_/i__carry__0_n_4 ,\i_/i_/i__carry__0_n_5 ,\i_/i_/i__carry__0_n_6 ,\i_/i_/i__carry__0_n_7 }),
        .\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[1]_0 (\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[1] ),
        .O({\i_/i_/i__carry_n_4 ,\i_/i_/i__carry_n_5 ,\i_/i_/i__carry_n_6 ,\i_/i_/i__carry_n_7 }),
        .Q({I_MSTR_PCC_n_12,I_MSTR_PCC_n_13,I_MSTR_PCC_n_14,I_MSTR_PCC_n_15,I_MSTR_PCC_n_16,I_MSTR_PCC_n_17,I_MSTR_PCC_n_18}),
        .S({I_MSTR_PCC_n_25,I_MSTR_PCC_n_26,I_MSTR_PCC_n_27,I_MSTR_PCC_n_28}),
        .SR(SR),
        .m00_axi_aclk(m00_axi_aclk),
        .out(out),
        .sig_addr2stat_cmd_fifo_empty(sig_addr2stat_cmd_fifo_empty),
        .\sig_btt_cntr_reg[11]_0 ({Q,sig_btt_cntr}),
        .\sig_btt_cntr_reg[11]_1 ({\sig_btt_cntr_reg[11]_i_1_n_4 ,\sig_btt_cntr_reg[11]_i_1_n_5 ,\sig_btt_cntr_reg[11]_i_1_n_6 ,\sig_btt_cntr_reg[11]_i_1_n_7 ,\sig_btt_cntr_reg[7]_i_1_n_4 ,\sig_btt_cntr_reg[7]_i_1_n_5 ,\sig_btt_cntr_reg[7]_i_1_n_6 ,\sig_btt_cntr_reg[7]_i_1_n_7 ,\sig_btt_cntr_reg[3]_i_1_n_4 ,\sig_btt_cntr_reg[3]_i_1_n_5 ,\sig_btt_cntr_reg[3]_i_1_n_6 ,\sig_btt_cntr_reg[3]_i_1_n_7 }),
        .sig_calc_error_pushed_reg_0(sig_calc_error_pushed),
        .sig_calc_error_reg_reg_0(sig_pcc2all_calc_err),
        .sig_calc_error_reg_reg_1(sig_calc_error_reg_reg),
        .sig_cmd2all_doing_read(sig_cmd2all_doing_read),
        .sig_cmd2data_valid_reg_0(I_RD_DATA_CNTL_n_6),
        .sig_cmd2pcc_cmd_valid(sig_cmd2pcc_cmd_valid),
        .sig_cmd_full_reg_reg(sig_cmd_full_reg_reg),
        .sig_cmd_full_reg_reg_0(sig_cmd_full_reg_reg_0),
        .sig_cmd_full_reg_reg_1(sig_cmd_full_reg_reg_1),
        .sig_input_reg_empty_reg_0({sig_input_reg_empty_reg,I_MSTR_PCC_n_20,I_MSTR_PCC_n_21,I_MSTR_PCC_n_22}),
        .sig_llink2rd_allow_addr_req(sig_llink2rd_allow_addr_req),
        .sig_next_calc_error_reg(sig_next_calc_error_reg),
        .sig_next_calc_error_reg_reg(I_MSTR_PCC_n_42),
        .sig_pcc2addr_burst(sig_pcc2addr_burst),
        .sig_pcc2data_calc_error(sig_pcc2data_calc_error),
        .sig_pcc2data_cmd_cmplt(sig_pcc2data_cmd_cmplt),
        .sig_pcc2data_cmd_valid(sig_pcc2data_cmd_valid),
        .sig_pcc2data_eof(sig_pcc2data_eof),
        .sig_pcc2data_sequential(sig_pcc2data_sequential),
        .sig_push_addr_reg1_out(sig_push_addr_reg1_out),
        .sig_rdc2pcc_cmd_ready(sig_rdc2pcc_cmd_ready),
        .\sig_xfer_addr_reg_reg[31]_0 ({sig_pcc2addr_addr,sig_pcc2data_saddr_lsb,sig_pcc2data_dre_src_align}),
        .sig_xfer_calc_err_reg_reg_0(I_MSTR_PCC_n_23),
        .\sig_xfer_len_reg_reg[0]_0 (I_RD_DATA_CNTL_n_5),
        .\sig_xfer_len_reg_reg[3]_0 (I_MSTR_PCC_n_56),
        .\sig_xfer_len_reg_reg[3]_1 (sig_pcc2data_len));
  design_1_myip_burst_read_test_1_0_axi_master_burst_rddata_cntl I_RD_DATA_CNTL
       (.m00_axi_aclk(m00_axi_aclk),
        .m00_axi_rlast(m00_axi_rlast),
        .m00_axi_rready(m00_axi_rready),
        .m00_axi_rready_0(sig_rdskid2rdc_tready),
        .m00_axi_rresp(m00_axi_rresp),
        .m00_axi_rvalid(m00_axi_rvalid),
        .out(out),
        .\sig_addr_posted_cntr_reg[2]_0 (sig_addr2data_addr_posted),
        .sig_cmd2all_doing_read(sig_cmd2all_doing_read),
        .\sig_dbeat_cntr_reg[3]_0 (sig_pcc2data_len),
        .sig_doing_read_reg_reg(I_RD_DATA_CNTL_n_5),
        .sig_last_dbeat_reg_0(I_MSTR_PCC_n_56),
        .sig_next_calc_error_reg(sig_next_calc_error_reg),
        .sig_next_calc_error_reg_reg_0(I_RD_DATA_CNTL_n_6),
        .sig_next_calc_error_reg_reg_1(I_RD_DATA_CNTL_n_7),
        .sig_next_cmd_cmplt_reg_reg_0(sig_next_cmd_cmplt_reg_reg),
        .sig_next_eof_reg(sig_next_eof_reg),
        .sig_pcc2data_calc_error(sig_pcc2data_calc_error),
        .sig_pcc2data_cmd_cmplt(sig_pcc2data_cmd_cmplt),
        .sig_pcc2data_eof(sig_pcc2data_eof),
        .sig_pcc2data_sequential(sig_pcc2data_sequential),
        .sig_push_rd_sts_reg(sig_push_rd_sts_reg),
        .sig_rd_sts_decerr_reg0(sig_rd_sts_decerr_reg0),
        .sig_rdc2pcc_cmd_ready(sig_rdc2pcc_cmd_ready),
        .sig_rdc2rdskid_tlast(sig_rdc2rdskid_tlast),
        .sig_rdc2rsc_calc_err(sig_rdc2rsc_calc_err),
        .sig_rdc2rsc_slverr(sig_rdc2rsc_slverr),
        .sig_rsc2rdc_ready(sig_rsc2rdc_ready),
        .sig_rsc2stat_status(sig_rsc2stat_status),
        .sig_rsc2stat_status_valid(sig_rsc2stat_status_valid),
        .sig_status_reg_empty(sig_status_reg_empty),
        .\sig_xfer_len_reg_reg[0] (I_MSTR_PCC_n_42));
  design_1_myip_burst_read_test_1_0_axi_master_burst_rd_status_cntl I_RD_STATUS_CNTLR
       (.ip2bus_otputs(ip2bus_otputs),
        .m00_axi_aclk(m00_axi_aclk),
        .sig_error_sh_reg_reg(sig_error_sh_reg_reg),
        .sig_push_rd_sts_reg(sig_push_rd_sts_reg),
        .sig_rd_sts_decerr_reg0(sig_rd_sts_decerr_reg0),
        .sig_rd_sts_decerr_reg_reg_0(sig_rsc2stat_status),
        .sig_rd_sts_interr_reg_reg_0(sig_rd_sts_interr_reg_reg),
        .sig_rd_sts_slverr_reg_reg_0(sig_rd_sts_slverr_reg_reg),
        .sig_rd_sts_tag_reg0(sig_rd_sts_tag_reg0),
        .sig_rdc2rsc_calc_err(sig_rdc2rsc_calc_err),
        .sig_rdc2rsc_slverr(sig_rdc2rsc_slverr),
        .sig_rsc2rdc_ready(sig_rsc2rdc_ready),
        .sig_rsc2stat_status_valid(sig_rsc2stat_status_valid),
        .sig_stat_error(sig_stat_error));
  design_1_myip_burst_read_test_1_0_axi_master_burst_skid_buf I_READ_STREAM_SKID_BUF
       (.E(E),
        .bus2ip_mstrd_d(bus2ip_mstrd_d),
        .ip2bus_inputs(ip2bus_inputs),
        .m00_axi_aclk(m00_axi_aclk),
        .m00_axi_rdata(m00_axi_rdata),
        .m00_axi_rlast(m00_axi_rlast),
        .m00_axi_rvalid(m00_axi_rvalid),
        .out(sig_rdskid2rdc_tready),
        .sig_init_reg(\GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/sig_init_reg ),
        .sig_last_reg_out_reg_0(out),
        .sig_llink2cmd_rd_busy(sig_llink2cmd_rd_busy),
        .sig_llink_busy0(sig_llink_busy0),
        .sig_llink_busy_reg(sig_llink_busy_i_2_n_0),
        .sig_m_valid_dup_reg_0(sig_m_valid_dup_reg),
        .sig_m_valid_out_reg_0(sig_m_valid_out_reg),
        .sig_m_valid_out_reg_1(sig_m_valid_out_reg_0),
        .sig_m_valid_out_reg_2(I_RD_DATA_CNTL_n_7),
        .sig_next_eof_reg(sig_next_eof_reg),
        .sig_rdc2rdskid_tlast(sig_rdc2rdskid_tlast),
        .sig_s_ready_out_reg_0(sig_s_ready_out_reg));
  design_1_myip_burst_read_test_1_0_axi_master_burst_skid2mm_buf I_WRITE_MMAP_SKID_BUF
       (.m00_axi_aclk(m00_axi_aclk),
        .m00_axi_wready(m00_axi_wready),
        .m00_axi_wstrb(m00_axi_wstrb),
        .m00_axi_wvalid(m00_axi_wvalid),
        .out(p_0_in3_in),
        .sig_init_reg(\GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/sig_init_reg ),
        .sig_s_ready_dup_reg_0(I_WR_STATUS_CNTLR_n_2),
        .\sig_strb_reg_out_reg[3]_0 (out));
  design_1_myip_burst_read_test_1_0_axi_master_burst_skid_buf_0 I_WRITE_STRM_SKID_BUF
       (.m00_axi_aclk(m00_axi_aclk),
        .out(p_0_in5_in),
        .sig_m_valid_dup_reg_0(p_0_in2_in),
        .sig_m_valid_dup_reg_1(I_WR_STATUS_CNTLR_n_3),
        .sig_s_ready_dup_reg_0(I_WR_STATUS_CNTLR_n_1));
  design_1_myip_burst_read_test_1_0_axi_master_burst_wr_status_cntl I_WR_STATUS_CNTLR
       (.m00_axi_aclk(m00_axi_aclk),
        .m00_axi_bready(m00_axi_bready),
        .m00_axi_bvalid(m00_axi_bvalid),
        .m00_axi_wready(m00_axi_wready),
        .out(out),
        .sig_init_reg(\GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/sig_init_reg ),
        .sig_init_reg_reg(I_WR_STATUS_CNTLR_n_1),
        .sig_init_reg_reg_0(I_WR_STATUS_CNTLR_n_2),
        .sig_m_valid_dup_reg(p_0_in2_in),
        .sig_rdwr_reset_reg_reg(I_WR_STATUS_CNTLR_n_3),
        .sig_s_ready_dup_reg(p_0_in5_in),
        .sig_s_ready_dup_reg_0(p_0_in3_in));
  CARRY4 \i_/i_/i__carry 
       (.CI(1'b0),
        .CO({\i_/i_/i__carry_n_0 ,\i_/i_/i__carry_n_1 ,\i_/i_/i__carry_n_2 ,\i_/i_/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,sig_input_reg_empty_reg}),
        .O({\i_/i_/i__carry_n_4 ,\i_/i_/i__carry_n_5 ,\i_/i_/i__carry_n_6 ,\i_/i_/i__carry_n_7 }),
        .S({I_MSTR_PCC_n_25,I_MSTR_PCC_n_26,I_MSTR_PCC_n_27,I_MSTR_PCC_n_28}));
  CARRY4 \i_/i_/i__carry__0 
       (.CI(\i_/i_/i__carry_n_0 ),
        .CO({\i_/i_/i__carry__0_n_0 ,\i_/i_/i__carry__0_n_1 ,\i_/i_/i__carry__0_n_2 ,\i_/i_/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_/i_/i__carry__0_n_4 ,\i_/i_/i__carry__0_n_5 ,\i_/i_/i__carry__0_n_6 ,\i_/i_/i__carry__0_n_7 }),
        .S({I_MSTR_PCC_n_29,I_MSTR_PCC_n_30,I_MSTR_PCC_n_31,I_MSTR_PCC_n_32}));
  CARRY4 \i_/i_/i__carry__1 
       (.CI(\i_/i_/i__carry__0_n_0 ),
        .CO({\i_/i_/i__carry__1_n_0 ,\i_/i_/i__carry__1_n_1 ,\i_/i_/i__carry__1_n_2 ,\i_/i_/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_/i_/i__carry__1_n_4 ,\i_/i_/i__carry__1_n_5 ,\i_/i_/i__carry__1_n_6 ,\i_/i_/i__carry__1_n_7 }),
        .S({I_MSTR_PCC_n_33,I_MSTR_PCC_n_34,I_MSTR_PCC_n_35,I_MSTR_PCC_n_36}));
  CARRY4 \i_/i_/i__carry__2 
       (.CI(\i_/i_/i__carry__1_n_0 ),
        .CO({\NLW_i_/i_/i__carry__2_CO_UNCONNECTED [3],\i_/i_/i__carry__2_n_1 ,\i_/i_/i__carry__2_n_2 ,\i_/i_/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_/i_/i__carry__2_n_4 ,\i_/i_/i__carry__2_n_5 ,\i_/i_/i__carry__2_n_6 ,\i_/i_/i__carry__2_n_7 }),
        .S({I_MSTR_PCC_n_37,I_MSTR_PCC_n_38,I_MSTR_PCC_n_39,I_MSTR_PCC_n_40}));
  LUT5 #(
    .INIT(32'hAAC055C0)) 
    \sig_btt_cntr[3]_i_6 
       (.I0(I_MSTR_PCC_n_15),
        .I1(sig_cmd_type_req),
        .I2(\sig_btt_cntr_reg[7] [3]),
        .I3(sig_input_reg_empty_reg),
        .I4(sig_btt_cntr[3]),
        .O(\sig_btt_cntr[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAAC055C0)) 
    \sig_btt_cntr[3]_i_7 
       (.I0(I_MSTR_PCC_n_16),
        .I1(sig_cmd_type_req),
        .I2(\sig_btt_cntr_reg[7] [2]),
        .I3(sig_input_reg_empty_reg),
        .I4(sig_btt_cntr[2]),
        .O(\sig_btt_cntr[3]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAAC055C0)) 
    \sig_btt_cntr[3]_i_8 
       (.I0(I_MSTR_PCC_n_17),
        .I1(sig_cmd_type_req),
        .I2(\sig_btt_cntr_reg[7] [1]),
        .I3(sig_input_reg_empty_reg),
        .I4(sig_btt_cntr[1]),
        .O(\sig_btt_cntr[3]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hAAC055C0)) 
    \sig_btt_cntr[3]_i_9 
       (.I0(I_MSTR_PCC_n_18),
        .I1(sig_cmd_type_req),
        .I2(\sig_btt_cntr_reg[7] [0]),
        .I3(sig_input_reg_empty_reg),
        .I4(sig_btt_cntr[0]),
        .O(\sig_btt_cntr[3]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAC055C0)) 
    \sig_btt_cntr[7]_i_6 
       (.I0(I_MSTR_PCC_n_12),
        .I1(sig_cmd_type_req),
        .I2(\sig_btt_cntr_reg[7] [6]),
        .I3(sig_input_reg_empty_reg),
        .I4(sig_btt_cntr[6]),
        .O(\sig_btt_cntr[7]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAAC055C0)) 
    \sig_btt_cntr[7]_i_7 
       (.I0(I_MSTR_PCC_n_13),
        .I1(sig_cmd_type_req),
        .I2(\sig_btt_cntr_reg[7] [5]),
        .I3(sig_input_reg_empty_reg),
        .I4(sig_btt_cntr[5]),
        .O(\sig_btt_cntr[7]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAAC055C0)) 
    \sig_btt_cntr[7]_i_8 
       (.I0(I_MSTR_PCC_n_14),
        .I1(sig_cmd_type_req),
        .I2(\sig_btt_cntr_reg[7] [4]),
        .I3(sig_input_reg_empty_reg),
        .I4(sig_btt_cntr[4]),
        .O(\sig_btt_cntr[7]_i_8_n_0 ));
  CARRY4 \sig_btt_cntr_reg[11]_i_1 
       (.CI(\sig_btt_cntr_reg[7]_i_1_n_0 ),
        .CO({\NLW_sig_btt_cntr_reg[11]_i_1_CO_UNCONNECTED [3],\sig_btt_cntr_reg[11]_i_1_n_1 ,\sig_btt_cntr_reg[11]_i_1_n_2 ,\sig_btt_cntr_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,sig_input_reg_empty_reg,sig_input_reg_empty_reg,sig_input_reg_empty_reg}),
        .O({\sig_btt_cntr_reg[11]_i_1_n_4 ,\sig_btt_cntr_reg[11]_i_1_n_5 ,\sig_btt_cntr_reg[11]_i_1_n_6 ,\sig_btt_cntr_reg[11]_i_1_n_7 }),
        .S(\sig_btt_cntr_reg[11] ));
  CARRY4 \sig_btt_cntr_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\sig_btt_cntr_reg[3]_i_1_n_0 ,\sig_btt_cntr_reg[3]_i_1_n_1 ,\sig_btt_cntr_reg[3]_i_1_n_2 ,\sig_btt_cntr_reg[3]_i_1_n_3 }),
        .CYINIT(sig_input_reg_empty_reg),
        .DI({I_MSTR_PCC_n_8,I_MSTR_PCC_n_9,I_MSTR_PCC_n_10,I_MSTR_PCC_n_11}),
        .O({\sig_btt_cntr_reg[3]_i_1_n_4 ,\sig_btt_cntr_reg[3]_i_1_n_5 ,\sig_btt_cntr_reg[3]_i_1_n_6 ,\sig_btt_cntr_reg[3]_i_1_n_7 }),
        .S({\sig_btt_cntr[3]_i_6_n_0 ,\sig_btt_cntr[3]_i_7_n_0 ,\sig_btt_cntr[3]_i_8_n_0 ,\sig_btt_cntr[3]_i_9_n_0 }));
  CARRY4 \sig_btt_cntr_reg[7]_i_1 
       (.CI(\sig_btt_cntr_reg[3]_i_1_n_0 ),
        .CO({\sig_btt_cntr_reg[7]_i_1_n_0 ,\sig_btt_cntr_reg[7]_i_1_n_1 ,\sig_btt_cntr_reg[7]_i_1_n_2 ,\sig_btt_cntr_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({sig_input_reg_empty_reg,I_MSTR_PCC_n_20,I_MSTR_PCC_n_21,I_MSTR_PCC_n_22}),
        .O({\sig_btt_cntr_reg[7]_i_1_n_4 ,\sig_btt_cntr_reg[7]_i_1_n_5 ,\sig_btt_cntr_reg[7]_i_1_n_6 ,\sig_btt_cntr_reg[7]_i_1_n_7 }),
        .S({S,\sig_btt_cntr[7]_i_6_n_0 ,\sig_btt_cntr[7]_i_7_n_0 ,\sig_btt_cntr[7]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    sig_doing_read_reg_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_cmd2all_doing_read),
        .Q(sig_doing_read_reg),
        .R(out));
  LUT2 #(
    .INIT(4'hB)) 
    sig_llink_busy_i_2
       (.I0(sig_doing_read_reg),
        .I1(sig_cmd2all_doing_read),
        .O(sig_llink_busy_i_2_n_0));
endmodule

module design_1_myip_burst_read_test_1_0_axi_master_burst_rddata_cntl
   (sig_rdc2pcc_cmd_ready,
    sig_next_calc_error_reg,
    sig_next_eof_reg,
    sig_rdc2rsc_calc_err,
    sig_rdc2rsc_slverr,
    sig_doing_read_reg_reg,
    sig_next_calc_error_reg_reg_0,
    sig_next_calc_error_reg_reg_1,
    m00_axi_rready,
    sig_rdc2rdskid_tlast,
    sig_push_rd_sts_reg,
    sig_rd_sts_decerr_reg0,
    sig_pcc2data_cmd_cmplt,
    m00_axi_aclk,
    sig_pcc2data_calc_error,
    out,
    sig_pcc2data_sequential,
    sig_pcc2data_eof,
    \sig_xfer_len_reg_reg[0] ,
    sig_cmd2all_doing_read,
    sig_status_reg_empty,
    sig_rsc2stat_status_valid,
    \sig_dbeat_cntr_reg[3]_0 ,
    sig_next_cmd_cmplt_reg_reg_0,
    m00_axi_rvalid,
    m00_axi_rready_0,
    m00_axi_rlast,
    m00_axi_rresp,
    sig_rsc2rdc_ready,
    sig_rsc2stat_status,
    sig_last_dbeat_reg_0,
    \sig_addr_posted_cntr_reg[2]_0 );
  output sig_rdc2pcc_cmd_ready;
  output sig_next_calc_error_reg;
  output sig_next_eof_reg;
  output sig_rdc2rsc_calc_err;
  output sig_rdc2rsc_slverr;
  output sig_doing_read_reg_reg;
  output sig_next_calc_error_reg_reg_0;
  output sig_next_calc_error_reg_reg_1;
  output m00_axi_rready;
  output sig_rdc2rdskid_tlast;
  output sig_push_rd_sts_reg;
  output sig_rd_sts_decerr_reg0;
  input sig_pcc2data_cmd_cmplt;
  input m00_axi_aclk;
  input sig_pcc2data_calc_error;
  input out;
  input sig_pcc2data_sequential;
  input sig_pcc2data_eof;
  input \sig_xfer_len_reg_reg[0] ;
  input sig_cmd2all_doing_read;
  input sig_status_reg_empty;
  input sig_rsc2stat_status_valid;
  input [3:0]\sig_dbeat_cntr_reg[3]_0 ;
  input sig_next_cmd_cmplt_reg_reg_0;
  input m00_axi_rvalid;
  input m00_axi_rready_0;
  input m00_axi_rlast;
  input [1:0]m00_axi_rresp;
  input sig_rsc2rdc_ready;
  input [0:0]sig_rsc2stat_status;
  input sig_last_dbeat_reg_0;
  input \sig_addr_posted_cntr_reg[2]_0 ;

  wire m00_axi_aclk;
  wire m00_axi_rlast;
  wire m00_axi_rready;
  wire m00_axi_rready_0;
  wire m00_axi_rready_INST_0_i_1_n_0;
  wire [1:0]m00_axi_rresp;
  wire m00_axi_rvalid;
  wire out;
  wire [7:0]p_1_in;
  wire [2:0]sig_addr_posted_cntr;
  wire \sig_addr_posted_cntr[0]_i_1_n_0 ;
  wire \sig_addr_posted_cntr[1]_i_1_n_0 ;
  wire \sig_addr_posted_cntr[2]_i_1_n_0 ;
  wire \sig_addr_posted_cntr_reg[2]_0 ;
  wire sig_clr_dqual_reg;
  wire sig_cmd2all_doing_read;
  wire sig_cmd_cmplt_last_dbeat;
  wire sig_coelsc_decerr_reg0;
  wire sig_coelsc_interr_reg0;
  wire sig_coelsc_reg_full_i_4_n_0;
  wire sig_coelsc_slverr_reg0;
  wire sig_coelsc_tag_reg0;
  wire [7:0]sig_dbeat_cntr;
  wire \sig_dbeat_cntr[3]_i_2_n_0 ;
  wire \sig_dbeat_cntr[5]_i_2_n_0 ;
  wire \sig_dbeat_cntr[7]_i_1_n_0 ;
  wire \sig_dbeat_cntr[7]_i_3_n_0 ;
  wire \sig_dbeat_cntr[7]_i_5_n_0 ;
  wire [3:0]\sig_dbeat_cntr_reg[3]_0 ;
  wire sig_doing_read_reg_reg;
  wire sig_dqual_reg_empty;
  wire sig_dqual_reg_full;
  wire sig_last_dbeat_i_1_n_0;
  wire sig_last_dbeat_i_2_n_0;
  wire sig_last_dbeat_i_4_n_0;
  wire sig_last_dbeat_reg_0;
  wire sig_last_dbeat_reg_n_0;
  wire sig_last_mmap_dbeat;
  wire sig_ld_new_cmd_reg;
  wire sig_ld_new_cmd_reg_i_1_n_0;
  wire sig_next_calc_error_reg;
  wire sig_next_calc_error_reg_reg_0;
  wire sig_next_calc_error_reg_reg_1;
  wire sig_next_cmd_cmplt_reg;
  wire sig_next_cmd_cmplt_reg_i_3_n_0;
  wire sig_next_cmd_cmplt_reg_i_4_n_0;
  wire sig_next_cmd_cmplt_reg_i_5_n_0;
  wire sig_next_cmd_cmplt_reg_i_6_n_0;
  wire sig_next_cmd_cmplt_reg_i_8_n_0;
  wire sig_next_cmd_cmplt_reg_reg_0;
  wire sig_next_eof_reg;
  wire sig_next_sequential_reg;
  wire sig_pcc2data_calc_error;
  wire sig_pcc2data_cmd_cmplt;
  wire sig_pcc2data_eof;
  wire sig_pcc2data_sequential;
  wire sig_push_coelsc_reg;
  wire sig_push_rd_sts_reg;
  wire sig_rd2llink_xfer_cmplt;
  wire sig_rd_sts_decerr_reg0;
  wire sig_rdc2pcc_cmd_ready;
  wire sig_rdc2rdskid_tlast;
  wire sig_rdc2rsc_calc_err;
  wire sig_rdc2rsc_decerr;
  wire sig_rdc2rsc_slverr;
  wire sig_rdc2rsc_valid;
  wire sig_rsc2rdc_ready;
  wire [0:0]sig_rsc2stat_status;
  wire sig_rsc2stat_status_valid;
  wire sig_status_reg_empty;
  wire \sig_xfer_len_reg_reg[0] ;
  wire sig_xfer_reg_empty_i_6_n_0;

  LUT5 #(
    .INIT(32'h00004000)) 
    m00_axi_rready_INST_0
       (.I0(sig_rdc2rsc_valid),
        .I1(sig_dqual_reg_full),
        .I2(m00_axi_rready_0),
        .I3(m00_axi_rready_INST_0_i_1_n_0),
        .I4(sig_next_calc_error_reg),
        .O(m00_axi_rready));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    m00_axi_rready_INST_0_i_1
       (.I0(sig_addr_posted_cntr[2]),
        .I1(sig_addr_posted_cntr[1]),
        .I2(sig_addr_posted_cntr[0]),
        .O(m00_axi_rready_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hF80F0F0F0FE0E0E0)) 
    \sig_addr_posted_cntr[0]_i_1 
       (.I0(sig_addr_posted_cntr[1]),
        .I1(sig_addr_posted_cntr[2]),
        .I2(sig_rd2llink_xfer_cmplt),
        .I3(\sig_addr_posted_cntr_reg[2]_0 ),
        .I4(sig_cmd2all_doing_read),
        .I5(sig_addr_posted_cntr[0]),
        .O(\sig_addr_posted_cntr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF708088F8F7000)) 
    \sig_addr_posted_cntr[1]_i_1 
       (.I0(sig_cmd2all_doing_read),
        .I1(\sig_addr_posted_cntr_reg[2]_0 ),
        .I2(sig_rd2llink_xfer_cmplt),
        .I3(sig_addr_posted_cntr[2]),
        .I4(sig_addr_posted_cntr[1]),
        .I5(sig_addr_posted_cntr[0]),
        .O(\sig_addr_posted_cntr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF08FF00FF008F00)) 
    \sig_addr_posted_cntr[2]_i_1 
       (.I0(sig_cmd2all_doing_read),
        .I1(\sig_addr_posted_cntr_reg[2]_0 ),
        .I2(sig_rd2llink_xfer_cmplt),
        .I3(sig_addr_posted_cntr[2]),
        .I4(sig_addr_posted_cntr[1]),
        .I5(sig_addr_posted_cntr[0]),
        .O(\sig_addr_posted_cntr[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_posted_cntr_reg[0] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\sig_addr_posted_cntr[0]_i_1_n_0 ),
        .Q(sig_addr_posted_cntr[0]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_posted_cntr_reg[1] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\sig_addr_posted_cntr[1]_i_1_n_0 ),
        .Q(sig_addr_posted_cntr[1]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_posted_cntr_reg[2] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\sig_addr_posted_cntr[2]_i_1_n_0 ),
        .Q(sig_addr_posted_cntr[2]),
        .R(out));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    sig_coelsc_decerr_reg_i_1
       (.I0(m00_axi_rresp[1]),
        .I1(m00_axi_rresp[0]),
        .I2(sig_rdc2rsc_decerr),
        .O(sig_coelsc_decerr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_coelsc_decerr_reg_reg
       (.C(m00_axi_aclk),
        .CE(sig_push_coelsc_reg),
        .D(sig_coelsc_decerr_reg0),
        .Q(sig_rdc2rsc_decerr),
        .R(sig_coelsc_tag_reg0));
  LUT2 #(
    .INIT(4'hE)) 
    sig_coelsc_interr_reg_i_1
       (.I0(sig_next_calc_error_reg),
        .I1(sig_rdc2rsc_calc_err),
        .O(sig_coelsc_interr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_coelsc_interr_reg_reg
       (.C(m00_axi_aclk),
        .CE(sig_push_coelsc_reg),
        .D(sig_coelsc_interr_reg0),
        .Q(sig_rdc2rsc_calc_err),
        .R(sig_coelsc_tag_reg0));
  LUT5 #(
    .INIT(32'hFFFF7000)) 
    sig_coelsc_reg_full_i_1
       (.I0(sig_next_calc_error_reg),
        .I1(sig_ld_new_cmd_reg),
        .I2(sig_rsc2rdc_ready),
        .I3(sig_rdc2rsc_valid),
        .I4(out),
        .O(sig_coelsc_tag_reg0));
  LUT3 #(
    .INIT(8'hC5)) 
    sig_coelsc_reg_full_i_2
       (.I0(sig_coelsc_reg_full_i_4_n_0),
        .I1(sig_ld_new_cmd_reg),
        .I2(sig_next_calc_error_reg),
        .O(sig_push_coelsc_reg));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    sig_coelsc_reg_full_i_3
       (.I0(sig_next_cmd_cmplt_reg),
        .I1(m00_axi_rvalid),
        .I2(m00_axi_rlast),
        .I3(sig_next_calc_error_reg),
        .O(sig_cmd_cmplt_last_dbeat));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hF7FFFFFF)) 
    sig_coelsc_reg_full_i_4
       (.I0(m00_axi_rready_0),
        .I1(sig_dqual_reg_full),
        .I2(sig_rdc2rsc_valid),
        .I3(m00_axi_rvalid),
        .I4(m00_axi_rready_INST_0_i_1_n_0),
        .O(sig_coelsc_reg_full_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_coelsc_reg_full_reg
       (.C(m00_axi_aclk),
        .CE(sig_push_coelsc_reg),
        .D(sig_cmd_cmplt_last_dbeat),
        .Q(sig_rdc2rsc_valid),
        .R(sig_coelsc_tag_reg0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    sig_coelsc_slverr_reg_i_1
       (.I0(m00_axi_rresp[0]),
        .I1(m00_axi_rresp[1]),
        .I2(sig_rdc2rsc_slverr),
        .O(sig_coelsc_slverr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_coelsc_slverr_reg_reg
       (.C(m00_axi_aclk),
        .CE(sig_push_coelsc_reg),
        .D(sig_coelsc_slverr_reg0),
        .Q(sig_rdc2rsc_slverr),
        .R(sig_coelsc_tag_reg0));
  LUT4 #(
    .INIT(16'hF444)) 
    \sig_dbeat_cntr[0]_i_1 
       (.I0(sig_dbeat_cntr[0]),
        .I1(sig_next_calc_error_reg_reg_0),
        .I2(\sig_dbeat_cntr_reg[3]_0 [0]),
        .I3(sig_rdc2pcc_cmd_ready),
        .O(p_1_in[0]));
  LUT5 #(
    .INIT(32'hF88888F8)) 
    \sig_dbeat_cntr[1]_i_1 
       (.I0(sig_rdc2pcc_cmd_ready),
        .I1(\sig_dbeat_cntr_reg[3]_0 [1]),
        .I2(sig_next_calc_error_reg_reg_0),
        .I3(sig_dbeat_cntr[0]),
        .I4(sig_dbeat_cntr[1]),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'hF8F8F888888888F8)) 
    \sig_dbeat_cntr[2]_i_1 
       (.I0(sig_rdc2pcc_cmd_ready),
        .I1(\sig_dbeat_cntr_reg[3]_0 [2]),
        .I2(sig_next_calc_error_reg_reg_0),
        .I3(sig_dbeat_cntr[1]),
        .I4(sig_dbeat_cntr[0]),
        .I5(sig_dbeat_cntr[2]),
        .O(p_1_in[2]));
  LUT5 #(
    .INIT(32'hF88888F8)) 
    \sig_dbeat_cntr[3]_i_1 
       (.I0(sig_rdc2pcc_cmd_ready),
        .I1(\sig_dbeat_cntr_reg[3]_0 [3]),
        .I2(sig_next_calc_error_reg_reg_0),
        .I3(\sig_dbeat_cntr[3]_i_2_n_0 ),
        .I4(sig_dbeat_cntr[3]),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \sig_dbeat_cntr[3]_i_2 
       (.I0(sig_dbeat_cntr[1]),
        .I1(sig_dbeat_cntr[0]),
        .I2(sig_dbeat_cntr[2]),
        .O(\sig_dbeat_cntr[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE000100000000)) 
    \sig_dbeat_cntr[4]_i_1 
       (.I0(sig_dbeat_cntr[3]),
        .I1(sig_dbeat_cntr[1]),
        .I2(sig_dbeat_cntr[0]),
        .I3(sig_dbeat_cntr[2]),
        .I4(sig_dbeat_cntr[4]),
        .I5(sig_next_calc_error_reg_reg_0),
        .O(p_1_in[4]));
  LUT3 #(
    .INIT(8'h90)) 
    \sig_dbeat_cntr[5]_i_1 
       (.I0(\sig_dbeat_cntr[5]_i_2_n_0 ),
        .I1(sig_dbeat_cntr[5]),
        .I2(sig_next_calc_error_reg_reg_0),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \sig_dbeat_cntr[5]_i_2 
       (.I0(sig_dbeat_cntr[3]),
        .I1(sig_dbeat_cntr[1]),
        .I2(sig_dbeat_cntr[0]),
        .I3(sig_dbeat_cntr[2]),
        .I4(sig_dbeat_cntr[4]),
        .O(\sig_dbeat_cntr[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h90)) 
    \sig_dbeat_cntr[6]_i_1 
       (.I0(\sig_dbeat_cntr[7]_i_3_n_0 ),
        .I1(sig_dbeat_cntr[6]),
        .I2(sig_next_calc_error_reg_reg_0),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFF000000FE)) 
    \sig_dbeat_cntr[7]_i_1 
       (.I0(sig_dbeat_cntr[6]),
        .I1(\sig_dbeat_cntr[7]_i_3_n_0 ),
        .I2(sig_dbeat_cntr[7]),
        .I3(sig_coelsc_reg_full_i_4_n_0),
        .I4(sig_next_calc_error_reg),
        .I5(sig_rdc2pcc_cmd_ready),
        .O(\sig_dbeat_cntr[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hE100)) 
    \sig_dbeat_cntr[7]_i_2 
       (.I0(sig_dbeat_cntr[6]),
        .I1(\sig_dbeat_cntr[7]_i_3_n_0 ),
        .I2(sig_dbeat_cntr[7]),
        .I3(sig_next_calc_error_reg_reg_0),
        .O(p_1_in[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sig_dbeat_cntr[7]_i_3 
       (.I0(sig_dbeat_cntr[4]),
        .I1(sig_dbeat_cntr[2]),
        .I2(sig_dbeat_cntr[0]),
        .I3(sig_dbeat_cntr[1]),
        .I4(sig_dbeat_cntr[3]),
        .I5(sig_dbeat_cntr[5]),
        .O(\sig_dbeat_cntr[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFDFDFFFD)) 
    \sig_dbeat_cntr[7]_i_4 
       (.I0(sig_next_cmd_cmplt_reg_i_4_n_0),
        .I1(\sig_dbeat_cntr[7]_i_5_n_0 ),
        .I2(sig_next_calc_error_reg),
        .I3(sig_coelsc_reg_full_i_4_n_0),
        .I4(sig_dqual_reg_empty),
        .O(sig_next_calc_error_reg_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hFF15)) 
    \sig_dbeat_cntr[7]_i_5 
       (.I0(sig_dqual_reg_empty),
        .I1(sig_next_sequential_reg),
        .I2(sig_last_dbeat_reg_n_0),
        .I3(sig_next_cmd_cmplt_reg_reg_0),
        .O(\sig_dbeat_cntr[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[0] 
       (.C(m00_axi_aclk),
        .CE(\sig_dbeat_cntr[7]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(sig_dbeat_cntr[0]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[1] 
       (.C(m00_axi_aclk),
        .CE(\sig_dbeat_cntr[7]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(sig_dbeat_cntr[1]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[2] 
       (.C(m00_axi_aclk),
        .CE(\sig_dbeat_cntr[7]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(sig_dbeat_cntr[2]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[3] 
       (.C(m00_axi_aclk),
        .CE(\sig_dbeat_cntr[7]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(sig_dbeat_cntr[3]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[4] 
       (.C(m00_axi_aclk),
        .CE(\sig_dbeat_cntr[7]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(sig_dbeat_cntr[4]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[5] 
       (.C(m00_axi_aclk),
        .CE(\sig_dbeat_cntr[7]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(sig_dbeat_cntr[5]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[6] 
       (.C(m00_axi_aclk),
        .CE(\sig_dbeat_cntr[7]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(sig_dbeat_cntr[6]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[7] 
       (.C(m00_axi_aclk),
        .CE(\sig_dbeat_cntr[7]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(sig_dbeat_cntr[7]),
        .R(out));
  FDSE #(
    .INIT(1'b0)) 
    sig_dqual_reg_empty_reg
       (.C(m00_axi_aclk),
        .CE(sig_rdc2pcc_cmd_ready),
        .D(1'b0),
        .Q(sig_dqual_reg_empty),
        .S(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    sig_dqual_reg_full_reg
       (.C(m00_axi_aclk),
        .CE(sig_rdc2pcc_cmd_ready),
        .D(sig_rdc2pcc_cmd_ready),
        .Q(sig_dqual_reg_full),
        .R(sig_clr_dqual_reg));
  LUT5 #(
    .INIT(32'hEEEFEEE0)) 
    sig_last_dbeat_i_1
       (.I0(sig_last_dbeat_i_2_n_0),
        .I1(sig_last_dbeat_reg_0),
        .I2(\sig_dbeat_cntr[7]_i_1_n_0 ),
        .I3(out),
        .I4(sig_last_dbeat_reg_n_0),
        .O(sig_last_dbeat_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    sig_last_dbeat_i_2
       (.I0(sig_last_dbeat_i_4_n_0),
        .I1(sig_dbeat_cntr[1]),
        .I2(sig_dbeat_cntr[0]),
        .I3(out),
        .I4(sig_dbeat_cntr[2]),
        .I5(sig_next_cmd_cmplt_reg_i_3_n_0),
        .O(sig_last_dbeat_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    sig_last_dbeat_i_4
       (.I0(sig_dbeat_cntr[5]),
        .I1(sig_dbeat_cntr[6]),
        .I2(sig_dbeat_cntr[3]),
        .I3(sig_dbeat_cntr[4]),
        .I4(sig_next_calc_error_reg),
        .I5(sig_dbeat_cntr[7]),
        .O(sig_last_dbeat_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_last_dbeat_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_last_dbeat_i_1_n_0),
        .Q(sig_last_dbeat_reg_n_0),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h04)) 
    sig_last_mmap_dbeat_reg_i_1
       (.I0(sig_next_calc_error_reg),
        .I1(m00_axi_rlast),
        .I2(sig_coelsc_reg_full_i_4_n_0),
        .O(sig_last_mmap_dbeat));
  FDRE #(
    .INIT(1'b0)) 
    sig_last_mmap_dbeat_reg_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_last_mmap_dbeat),
        .Q(sig_rd2llink_xfer_cmplt),
        .R(out));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h80)) 
    sig_last_skid_reg_i_1
       (.I0(m00_axi_rlast),
        .I1(m00_axi_rvalid),
        .I2(sig_next_eof_reg),
        .O(sig_rdc2rdskid_tlast));
  LUT3 #(
    .INIT(8'h10)) 
    sig_ld_new_cmd_reg_i_1
       (.I0(out),
        .I1(sig_ld_new_cmd_reg),
        .I2(sig_rdc2pcc_cmd_ready),
        .O(sig_ld_new_cmd_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_ld_new_cmd_reg_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_ld_new_cmd_reg_i_1_n_0),
        .Q(sig_ld_new_cmd_reg),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_next_calc_error_reg_reg
       (.C(m00_axi_aclk),
        .CE(sig_rdc2pcc_cmd_ready),
        .D(sig_pcc2data_calc_error),
        .Q(sig_next_calc_error_reg),
        .R(sig_clr_dqual_reg));
  LUT4 #(
    .INIT(16'hFF08)) 
    sig_next_cmd_cmplt_reg_i_1
       (.I0(sig_next_cmd_cmplt_reg_i_3_n_0),
        .I1(m00_axi_rlast),
        .I2(sig_next_calc_error_reg),
        .I3(out),
        .O(sig_clr_dqual_reg));
  LUT6 #(
    .INIT(64'h00000000000088F8)) 
    sig_next_cmd_cmplt_reg_i_2
       (.I0(sig_next_cmd_cmplt_reg_i_4_n_0),
        .I1(sig_dqual_reg_empty),
        .I2(sig_next_cmd_cmplt_reg_i_5_n_0),
        .I3(sig_next_cmd_cmplt_reg_i_6_n_0),
        .I4(sig_next_calc_error_reg),
        .I5(sig_next_cmd_cmplt_reg_reg_0),
        .O(sig_rdc2pcc_cmd_ready));
  LUT6 #(
    .INIT(64'h00000000AA20FFFF)) 
    sig_next_cmd_cmplt_reg_i_3
       (.I0(m00_axi_rready_INST_0_i_1_n_0),
        .I1(sig_dqual_reg_empty),
        .I2(sig_next_cmd_cmplt_reg_i_8_n_0),
        .I3(sig_next_cmd_cmplt_reg_reg_0),
        .I4(sig_next_cmd_cmplt_reg_i_4_n_0),
        .I5(sig_next_cmd_cmplt_reg_i_6_n_0),
        .O(sig_next_cmd_cmplt_reg_i_3_n_0));
  LUT3 #(
    .INIT(8'h7F)) 
    sig_next_cmd_cmplt_reg_i_4
       (.I0(sig_addr_posted_cntr[2]),
        .I1(sig_addr_posted_cntr[1]),
        .I2(sig_addr_posted_cntr[0]),
        .O(sig_next_cmd_cmplt_reg_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h7E000000)) 
    sig_next_cmd_cmplt_reg_i_5
       (.I0(sig_addr_posted_cntr[2]),
        .I1(sig_addr_posted_cntr[1]),
        .I2(sig_addr_posted_cntr[0]),
        .I3(sig_last_dbeat_reg_n_0),
        .I4(sig_next_sequential_reg),
        .O(sig_next_cmd_cmplt_reg_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    sig_next_cmd_cmplt_reg_i_6
       (.I0(m00_axi_rvalid),
        .I1(sig_rdc2rsc_valid),
        .I2(sig_dqual_reg_full),
        .I3(m00_axi_rready_0),
        .O(sig_next_cmd_cmplt_reg_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h7)) 
    sig_next_cmd_cmplt_reg_i_8
       (.I0(sig_next_sequential_reg),
        .I1(sig_last_dbeat_reg_n_0),
        .O(sig_next_cmd_cmplt_reg_i_8_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_next_cmd_cmplt_reg_reg
       (.C(m00_axi_aclk),
        .CE(sig_rdc2pcc_cmd_ready),
        .D(sig_pcc2data_cmd_cmplt),
        .Q(sig_next_cmd_cmplt_reg),
        .R(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    sig_next_eof_reg_reg
       (.C(m00_axi_aclk),
        .CE(sig_rdc2pcc_cmd_ready),
        .D(sig_pcc2data_eof),
        .Q(sig_next_eof_reg),
        .R(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    sig_next_sequential_reg_reg
       (.C(m00_axi_aclk),
        .CE(sig_rdc2pcc_cmd_ready),
        .D(sig_pcc2data_sequential),
        .Q(sig_next_sequential_reg),
        .R(sig_clr_dqual_reg));
  LUT2 #(
    .INIT(4'hE)) 
    sig_rd_sts_decerr_reg_i_1
       (.I0(sig_rdc2rsc_decerr),
        .I1(sig_rsc2stat_status),
        .O(sig_rd_sts_decerr_reg0));
  LUT2 #(
    .INIT(4'h8)) 
    sig_rd_sts_reg_full_i_2
       (.I0(sig_rdc2rsc_valid),
        .I1(sig_rsc2rdc_ready),
        .O(sig_push_rd_sts_reg));
  LUT5 #(
    .INIT(32'hFFDFFFFF)) 
    sig_s_ready_dup_i_3
       (.I0(m00_axi_rready_INST_0_i_1_n_0),
        .I1(sig_next_calc_error_reg),
        .I2(m00_axi_rvalid),
        .I3(sig_rdc2rsc_valid),
        .I4(sig_dqual_reg_full),
        .O(sig_next_calc_error_reg_reg_1));
  LUT6 #(
    .INIT(64'hFFFFFFFF80008080)) 
    sig_xfer_reg_empty_i_3
       (.I0(sig_xfer_reg_empty_i_6_n_0),
        .I1(\sig_xfer_len_reg_reg[0] ),
        .I2(sig_cmd2all_doing_read),
        .I3(sig_status_reg_empty),
        .I4(sig_rsc2stat_status_valid),
        .I5(out),
        .O(sig_doing_read_reg_reg));
  LUT6 #(
    .INIT(64'h00F1F1F1F1F1F1F0)) 
    sig_xfer_reg_empty_i_6
       (.I0(sig_next_cmd_cmplt_reg_i_6_n_0),
        .I1(sig_next_cmd_cmplt_reg_i_8_n_0),
        .I2(sig_dqual_reg_empty),
        .I3(sig_addr_posted_cntr[2]),
        .I4(sig_addr_posted_cntr[1]),
        .I5(sig_addr_posted_cntr[0]),
        .O(sig_xfer_reg_empty_i_6_n_0));
endmodule

module design_1_myip_burst_read_test_1_0_axi_master_burst_reset
   (out,
    sig_rdwr_reset_reg_reg_0,
    sig_llink_reset_reg_reg_0,
    m00_axi_aclk,
    m00_axi_aresetn);
  output out;
  output sig_rdwr_reset_reg_reg_0;
  output sig_llink_reset_reg_reg_0;
  input m00_axi_aclk;
  input m00_axi_aresetn;

  wire m00_axi_aclk;
  wire m00_axi_aresetn;
  wire sig_axi_por2rst;
  wire sig_axi_por2rst_out;
  wire sig_axi_por2rst_out_i_2_n_0;
  wire sig_axi_por_reg1;
  wire sig_axi_por_reg2;
  wire sig_axi_por_reg3;
  wire sig_axi_por_reg4;
  wire sig_axi_por_reg5;
  wire sig_axi_por_reg6;
  wire sig_axi_por_reg7;
  wire sig_axi_por_reg8;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_cmd_reset_reg;
  wire sig_cmd_reset_reg_i_1_n_0;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_llink_reset_reg;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_rdwr_reset_reg;

  assign out = sig_cmd_reset_reg;
  assign sig_llink_reset_reg_reg_0 = sig_llink_reset_reg;
  assign sig_rdwr_reset_reg_reg_0 = sig_rdwr_reset_reg;
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    sig_axi_por2rst_out_i_1
       (.I0(sig_axi_por_reg7),
        .I1(sig_axi_por_reg6),
        .I2(sig_axi_por_reg1),
        .I3(sig_axi_por_reg8),
        .I4(sig_axi_por2rst_out_i_2_n_0),
        .O(sig_axi_por2rst));
  LUT4 #(
    .INIT(16'h7FFF)) 
    sig_axi_por2rst_out_i_2
       (.I0(sig_axi_por_reg4),
        .I1(sig_axi_por_reg5),
        .I2(sig_axi_por_reg2),
        .I3(sig_axi_por_reg3),
        .O(sig_axi_por2rst_out_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_axi_por2rst_out_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_axi_por2rst),
        .Q(sig_axi_por2rst_out),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_axi_por_reg1_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(sig_axi_por_reg1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_axi_por_reg2_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_axi_por_reg1),
        .Q(sig_axi_por_reg2),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_axi_por_reg3_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_axi_por_reg2),
        .Q(sig_axi_por_reg3),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_axi_por_reg4_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_axi_por_reg3),
        .Q(sig_axi_por_reg4),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_axi_por_reg5_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_axi_por_reg4),
        .Q(sig_axi_por_reg5),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_axi_por_reg6_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_axi_por_reg5),
        .Q(sig_axi_por_reg6),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_axi_por_reg7_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_axi_por_reg6),
        .Q(sig_axi_por_reg7),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_axi_por_reg8_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_axi_por_reg7),
        .Q(sig_axi_por_reg8),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hB)) 
    sig_cmd_reset_reg_i_1
       (.I0(sig_axi_por2rst_out),
        .I1(m00_axi_aresetn),
        .O(sig_cmd_reset_reg_i_1_n_0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_cmd_reset_reg_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_cmd_reset_reg_i_1_n_0),
        .Q(sig_cmd_reset_reg),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_llink_reset_reg_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_cmd_reset_reg_i_1_n_0),
        .Q(sig_llink_reset_reg),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_rdwr_reset_reg_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_cmd_reset_reg_i_1_n_0),
        .Q(sig_rdwr_reset_reg),
        .R(1'b0));
endmodule

module design_1_myip_burst_read_test_1_0_axi_master_burst_skid2mm_buf
   (out,
    m00_axi_wvalid,
    m00_axi_wstrb,
    sig_s_ready_dup_reg_0,
    m00_axi_aclk,
    \sig_strb_reg_out_reg[3]_0 ,
    sig_init_reg,
    m00_axi_wready);
  output out;
  output m00_axi_wvalid;
  output [0:0]m00_axi_wstrb;
  input sig_s_ready_dup_reg_0;
  input m00_axi_aclk;
  input \sig_strb_reg_out_reg[3]_0 ;
  input sig_init_reg;
  input m00_axi_wready;

  wire m00_axi_aclk;
  wire m00_axi_wready;
  wire [0:0]m00_axi_wstrb;
  wire sig_init_reg;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_m_valid_dup;
  wire sig_m_valid_dup_i_1__0_n_0;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_m_valid_out;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_s_ready_dup;
  wire sig_s_ready_dup_reg_0;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_s_ready_out;
  wire \sig_strb_reg_out[3]_i_1_n_0 ;
  wire \sig_strb_reg_out_reg[3]_0 ;
  wire [3:3]sig_strb_skid_reg;

  assign m00_axi_wvalid = sig_m_valid_out;
  assign out = sig_s_ready_dup;
  LUT5 #(
    .INIT(32'h00020202)) 
    sig_m_valid_dup_i_1__0
       (.I0(sig_m_valid_dup),
        .I1(sig_init_reg),
        .I2(\sig_strb_reg_out_reg[3]_0 ),
        .I3(sig_s_ready_dup),
        .I4(m00_axi_wready),
        .O(sig_m_valid_dup_i_1__0_n_0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_m_valid_dup_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_m_valid_dup_i_1__0_n_0),
        .Q(sig_m_valid_dup),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_m_valid_out_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_m_valid_dup_i_1__0_n_0),
        .Q(sig_m_valid_out),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_s_ready_dup_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_s_ready_dup_reg_0),
        .Q(sig_s_ready_dup),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_s_ready_out_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_s_ready_dup_reg_0),
        .Q(sig_s_ready_out),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hEFEEE0EE)) 
    \sig_strb_reg_out[3]_i_1 
       (.I0(sig_s_ready_dup),
        .I1(sig_strb_skid_reg),
        .I2(m00_axi_wready),
        .I3(sig_m_valid_dup),
        .I4(m00_axi_wstrb),
        .O(\sig_strb_reg_out[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[3] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\sig_strb_reg_out[3]_i_1_n_0 ),
        .Q(m00_axi_wstrb),
        .R(\sig_strb_reg_out_reg[3]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[3] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(1'b1),
        .Q(sig_strb_skid_reg),
        .R(\sig_strb_reg_out_reg[3]_0 ));
endmodule

module design_1_myip_burst_read_test_1_0_axi_master_burst_skid_buf
   (sig_m_valid_dup_reg_0,
    out,
    sig_m_valid_out_reg_0,
    sig_m_valid_out_reg_1,
    bus2ip_mstrd_d,
    m00_axi_aclk,
    sig_last_reg_out_reg_0,
    sig_rdc2rdskid_tlast,
    sig_s_ready_out_reg_0,
    sig_m_valid_out_reg_2,
    sig_init_reg,
    m00_axi_rvalid,
    m00_axi_rlast,
    m00_axi_rdata,
    sig_llink_busy_reg,
    sig_llink2cmd_rd_busy,
    ip2bus_inputs,
    sig_llink_busy0,
    sig_next_eof_reg,
    E);
  output sig_m_valid_dup_reg_0;
  output out;
  output sig_m_valid_out_reg_0;
  output sig_m_valid_out_reg_1;
  output [31:0]bus2ip_mstrd_d;
  input m00_axi_aclk;
  input sig_last_reg_out_reg_0;
  input sig_rdc2rdskid_tlast;
  input sig_s_ready_out_reg_0;
  input sig_m_valid_out_reg_2;
  input sig_init_reg;
  input m00_axi_rvalid;
  input m00_axi_rlast;
  input [31:0]m00_axi_rdata;
  input sig_llink_busy_reg;
  input sig_llink2cmd_rd_busy;
  input [0:0]ip2bus_inputs;
  input sig_llink_busy0;
  input sig_next_eof_reg;
  input [0:0]E;

  wire [0:0]E;
  wire [31:0]bus2ip_mstrd_d;
  wire [0:0]ip2bus_inputs;
  wire m00_axi_aclk;
  wire [31:0]m00_axi_rdata;
  wire m00_axi_rlast;
  wire m00_axi_rvalid;
  wire [31:0]sig_data_skid_mux_out;
  wire [31:0]sig_data_skid_reg;
  wire sig_init_reg;
  wire sig_last_reg_out_i_1_n_0;
  wire sig_last_reg_out_i_2_n_0;
  wire sig_last_reg_out_reg_0;
  wire sig_last_skid_reg;
  wire sig_llink2cmd_rd_busy;
  wire sig_llink_busy0;
  wire sig_llink_busy_reg;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_m_valid_dup;
  wire sig_m_valid_dup_i_1_n_0;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_m_valid_out;
  wire sig_m_valid_out_reg_1;
  wire sig_m_valid_out_reg_2;
  wire sig_next_eof_reg;
  wire sig_rd2llink_strm_tlast;
  wire sig_rdc2rdskid_tlast;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_s_ready_dup;
  wire sig_s_ready_dup_i_1_n_0;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_s_ready_out;
  wire sig_s_ready_out_reg_0;

  assign out = sig_s_ready_out;
  assign sig_m_valid_dup_reg_0 = sig_m_valid_dup;
  assign sig_m_valid_out_reg_0 = sig_m_valid_out;
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[0]_i_1 
       (.I0(m00_axi_rdata[0]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[0]),
        .O(sig_data_skid_mux_out[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[10]_i_1 
       (.I0(m00_axi_rdata[10]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[10]),
        .O(sig_data_skid_mux_out[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[11]_i_1 
       (.I0(m00_axi_rdata[11]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[11]),
        .O(sig_data_skid_mux_out[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[12]_i_1 
       (.I0(m00_axi_rdata[12]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[12]),
        .O(sig_data_skid_mux_out[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[13]_i_1 
       (.I0(m00_axi_rdata[13]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[13]),
        .O(sig_data_skid_mux_out[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[14]_i_1 
       (.I0(m00_axi_rdata[14]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[14]),
        .O(sig_data_skid_mux_out[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[15]_i_1 
       (.I0(m00_axi_rdata[15]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[15]),
        .O(sig_data_skid_mux_out[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[16]_i_1 
       (.I0(m00_axi_rdata[16]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[16]),
        .O(sig_data_skid_mux_out[16]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[17]_i_1 
       (.I0(m00_axi_rdata[17]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[17]),
        .O(sig_data_skid_mux_out[17]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[18]_i_1 
       (.I0(m00_axi_rdata[18]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[18]),
        .O(sig_data_skid_mux_out[18]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[19]_i_1 
       (.I0(m00_axi_rdata[19]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[19]),
        .O(sig_data_skid_mux_out[19]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[1]_i_1 
       (.I0(m00_axi_rdata[1]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[1]),
        .O(sig_data_skid_mux_out[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[20]_i_1 
       (.I0(m00_axi_rdata[20]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[20]),
        .O(sig_data_skid_mux_out[20]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[21]_i_1 
       (.I0(m00_axi_rdata[21]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[21]),
        .O(sig_data_skid_mux_out[21]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[22]_i_1 
       (.I0(m00_axi_rdata[22]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[22]),
        .O(sig_data_skid_mux_out[22]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[23]_i_1 
       (.I0(m00_axi_rdata[23]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[23]),
        .O(sig_data_skid_mux_out[23]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[24]_i_1 
       (.I0(m00_axi_rdata[24]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[24]),
        .O(sig_data_skid_mux_out[24]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[25]_i_1 
       (.I0(m00_axi_rdata[25]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[25]),
        .O(sig_data_skid_mux_out[25]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[26]_i_1 
       (.I0(m00_axi_rdata[26]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[26]),
        .O(sig_data_skid_mux_out[26]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[27]_i_1 
       (.I0(m00_axi_rdata[27]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[27]),
        .O(sig_data_skid_mux_out[27]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[28]_i_1 
       (.I0(m00_axi_rdata[28]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[28]),
        .O(sig_data_skid_mux_out[28]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[29]_i_1 
       (.I0(m00_axi_rdata[29]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[29]),
        .O(sig_data_skid_mux_out[29]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[2]_i_1 
       (.I0(m00_axi_rdata[2]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[2]),
        .O(sig_data_skid_mux_out[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[30]_i_1 
       (.I0(m00_axi_rdata[30]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[30]),
        .O(sig_data_skid_mux_out[30]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[31]_i_2 
       (.I0(m00_axi_rdata[31]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[31]),
        .O(sig_data_skid_mux_out[31]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[3]_i_1 
       (.I0(m00_axi_rdata[3]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[3]),
        .O(sig_data_skid_mux_out[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[4]_i_1 
       (.I0(m00_axi_rdata[4]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[4]),
        .O(sig_data_skid_mux_out[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[5]_i_1 
       (.I0(m00_axi_rdata[5]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[5]),
        .O(sig_data_skid_mux_out[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[6]_i_1 
       (.I0(m00_axi_rdata[6]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[6]),
        .O(sig_data_skid_mux_out[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[7]_i_1 
       (.I0(m00_axi_rdata[7]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[7]),
        .O(sig_data_skid_mux_out[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[8]_i_1 
       (.I0(m00_axi_rdata[8]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[8]),
        .O(sig_data_skid_mux_out[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[9]_i_1 
       (.I0(m00_axi_rdata[9]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[9]),
        .O(sig_data_skid_mux_out[9]));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[0] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[0]),
        .Q(bus2ip_mstrd_d[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[10] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[10]),
        .Q(bus2ip_mstrd_d[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[11] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[11]),
        .Q(bus2ip_mstrd_d[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[12] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[12]),
        .Q(bus2ip_mstrd_d[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[13] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[13]),
        .Q(bus2ip_mstrd_d[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[14] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[14]),
        .Q(bus2ip_mstrd_d[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[15] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[15]),
        .Q(bus2ip_mstrd_d[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[16] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[16]),
        .Q(bus2ip_mstrd_d[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[17] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[17]),
        .Q(bus2ip_mstrd_d[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[18] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[18]),
        .Q(bus2ip_mstrd_d[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[19] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[19]),
        .Q(bus2ip_mstrd_d[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[1] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[1]),
        .Q(bus2ip_mstrd_d[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[20] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[20]),
        .Q(bus2ip_mstrd_d[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[21] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[21]),
        .Q(bus2ip_mstrd_d[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[22] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[22]),
        .Q(bus2ip_mstrd_d[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[23] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[23]),
        .Q(bus2ip_mstrd_d[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[24] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[24]),
        .Q(bus2ip_mstrd_d[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[25] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[25]),
        .Q(bus2ip_mstrd_d[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[26] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[26]),
        .Q(bus2ip_mstrd_d[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[27] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[27]),
        .Q(bus2ip_mstrd_d[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[28] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[28]),
        .Q(bus2ip_mstrd_d[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[29] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[29]),
        .Q(bus2ip_mstrd_d[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[2] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[2]),
        .Q(bus2ip_mstrd_d[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[30] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[30]),
        .Q(bus2ip_mstrd_d[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[31] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[31]),
        .Q(bus2ip_mstrd_d[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[3] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[3]),
        .Q(bus2ip_mstrd_d[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[4] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[4]),
        .Q(bus2ip_mstrd_d[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[5] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[5]),
        .Q(bus2ip_mstrd_d[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[6] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[6]),
        .Q(bus2ip_mstrd_d[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[7] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[7]),
        .Q(bus2ip_mstrd_d[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[8] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[8]),
        .Q(bus2ip_mstrd_d[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[9] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[9]),
        .Q(bus2ip_mstrd_d[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[0] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m00_axi_rdata[0]),
        .Q(sig_data_skid_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[10] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m00_axi_rdata[10]),
        .Q(sig_data_skid_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[11] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m00_axi_rdata[11]),
        .Q(sig_data_skid_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[12] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m00_axi_rdata[12]),
        .Q(sig_data_skid_reg[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[13] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m00_axi_rdata[13]),
        .Q(sig_data_skid_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[14] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m00_axi_rdata[14]),
        .Q(sig_data_skid_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[15] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m00_axi_rdata[15]),
        .Q(sig_data_skid_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[16] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m00_axi_rdata[16]),
        .Q(sig_data_skid_reg[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[17] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m00_axi_rdata[17]),
        .Q(sig_data_skid_reg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[18] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m00_axi_rdata[18]),
        .Q(sig_data_skid_reg[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[19] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m00_axi_rdata[19]),
        .Q(sig_data_skid_reg[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[1] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m00_axi_rdata[1]),
        .Q(sig_data_skid_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[20] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m00_axi_rdata[20]),
        .Q(sig_data_skid_reg[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[21] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m00_axi_rdata[21]),
        .Q(sig_data_skid_reg[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[22] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m00_axi_rdata[22]),
        .Q(sig_data_skid_reg[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[23] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m00_axi_rdata[23]),
        .Q(sig_data_skid_reg[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[24] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m00_axi_rdata[24]),
        .Q(sig_data_skid_reg[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[25] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m00_axi_rdata[25]),
        .Q(sig_data_skid_reg[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[26] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m00_axi_rdata[26]),
        .Q(sig_data_skid_reg[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[27] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m00_axi_rdata[27]),
        .Q(sig_data_skid_reg[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[28] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m00_axi_rdata[28]),
        .Q(sig_data_skid_reg[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[29] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m00_axi_rdata[29]),
        .Q(sig_data_skid_reg[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[2] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m00_axi_rdata[2]),
        .Q(sig_data_skid_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[30] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m00_axi_rdata[30]),
        .Q(sig_data_skid_reg[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[31] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m00_axi_rdata[31]),
        .Q(sig_data_skid_reg[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[3] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m00_axi_rdata[3]),
        .Q(sig_data_skid_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[4] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m00_axi_rdata[4]),
        .Q(sig_data_skid_reg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[5] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m00_axi_rdata[5]),
        .Q(sig_data_skid_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[6] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m00_axi_rdata[6]),
        .Q(sig_data_skid_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[7] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m00_axi_rdata[7]),
        .Q(sig_data_skid_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[8] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m00_axi_rdata[8]),
        .Q(sig_data_skid_reg[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[9] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(m00_axi_rdata[9]),
        .Q(sig_data_skid_reg[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hCA0AFFFFCA0A0000)) 
    sig_last_reg_out_i_1
       (.I0(sig_last_skid_reg),
        .I1(sig_last_reg_out_i_2_n_0),
        .I2(sig_s_ready_dup),
        .I3(sig_next_eof_reg),
        .I4(E),
        .I5(sig_rd2llink_strm_tlast),
        .O(sig_last_reg_out_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    sig_last_reg_out_i_2
       (.I0(m00_axi_rvalid),
        .I1(m00_axi_rlast),
        .O(sig_last_reg_out_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_last_reg_out_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_last_reg_out_i_1_n_0),
        .Q(sig_rd2llink_strm_tlast),
        .R(sig_last_reg_out_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_last_skid_reg_reg
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(sig_rdc2rdskid_tlast),
        .Q(sig_last_skid_reg),
        .R(sig_last_reg_out_reg_0));
  LUT6 #(
    .INIT(64'h00000000FF557F55)) 
    sig_llink_busy_i_1
       (.I0(sig_llink_busy_reg),
        .I1(sig_m_valid_out),
        .I2(sig_rd2llink_strm_tlast),
        .I3(sig_llink2cmd_rd_busy),
        .I4(ip2bus_inputs),
        .I5(sig_llink_busy0),
        .O(sig_m_valid_out_reg_1));
  LUT6 #(
    .INIT(64'h000000000000B0FF)) 
    sig_m_valid_dup_i_1
       (.I0(sig_s_ready_out_reg_0),
        .I1(sig_s_ready_dup),
        .I2(sig_m_valid_dup),
        .I3(sig_m_valid_out_reg_2),
        .I4(sig_init_reg),
        .I5(sig_last_reg_out_reg_0),
        .O(sig_m_valid_dup_i_1_n_0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_m_valid_dup_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_m_valid_dup_i_1_n_0),
        .Q(sig_m_valid_dup),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_m_valid_out_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_m_valid_dup_i_1_n_0),
        .Q(sig_m_valid_out),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000FDFFDDDD)) 
    sig_s_ready_dup_i_1
       (.I0(sig_s_ready_out_reg_0),
        .I1(sig_init_reg),
        .I2(sig_m_valid_out_reg_2),
        .I3(sig_m_valid_dup),
        .I4(sig_s_ready_dup),
        .I5(sig_last_reg_out_reg_0),
        .O(sig_s_ready_dup_i_1_n_0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_s_ready_dup_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_s_ready_dup_i_1_n_0),
        .Q(sig_s_ready_dup),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_s_ready_out_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_s_ready_dup_i_1_n_0),
        .Q(sig_s_ready_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_master_burst_skid_buf" *) 
module design_1_myip_burst_read_test_1_0_axi_master_burst_skid_buf_0
   (out,
    sig_m_valid_dup_reg_0,
    sig_s_ready_dup_reg_0,
    m00_axi_aclk,
    sig_m_valid_dup_reg_1);
  output out;
  output sig_m_valid_dup_reg_0;
  input sig_s_ready_dup_reg_0;
  input m00_axi_aclk;
  input sig_m_valid_dup_reg_1;

  wire m00_axi_aclk;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_m_valid_dup;
  wire sig_m_valid_dup_reg_1;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_m_valid_out;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_s_ready_dup;
  wire sig_s_ready_dup_reg_0;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_s_ready_out;

  assign out = sig_s_ready_dup;
  assign sig_m_valid_dup_reg_0 = sig_m_valid_dup;
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_m_valid_dup_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_m_valid_dup_reg_1),
        .Q(sig_m_valid_dup),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_m_valid_out_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_m_valid_dup_reg_1),
        .Q(sig_m_valid_out),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_s_ready_dup_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_s_ready_dup_reg_0),
        .Q(sig_s_ready_dup),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_s_ready_out_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_s_ready_dup_reg_0),
        .Q(sig_s_ready_out),
        .R(1'b0));
endmodule

module design_1_myip_burst_read_test_1_0_axi_master_burst_wr_status_cntl
   (sig_init_reg,
    sig_init_reg_reg,
    sig_init_reg_reg_0,
    sig_rdwr_reset_reg_reg,
    m00_axi_bready,
    out,
    m00_axi_aclk,
    m00_axi_bvalid,
    sig_s_ready_dup_reg,
    sig_s_ready_dup_reg_0,
    m00_axi_wready,
    sig_m_valid_dup_reg);
  output sig_init_reg;
  output sig_init_reg_reg;
  output sig_init_reg_reg_0;
  output sig_rdwr_reset_reg_reg;
  output m00_axi_bready;
  input out;
  input m00_axi_aclk;
  input m00_axi_bvalid;
  input sig_s_ready_dup_reg;
  input sig_s_ready_dup_reg_0;
  input m00_axi_wready;
  input sig_m_valid_dup_reg;

  wire m00_axi_aclk;
  wire m00_axi_bready;
  wire m00_axi_bvalid;
  wire m00_axi_wready;
  wire out;
  wire sig_init_reg;
  wire sig_init_reg_reg;
  wire sig_init_reg_reg_0;
  wire sig_m_valid_dup_reg;
  wire sig_rdwr_reset_reg_reg;
  wire sig_s_ready_dup_reg;
  wire sig_s_ready_dup_reg_0;

  design_1_myip_burst_read_test_1_0_axi_master_burst_fifo I_WRESP_STATUS_FIFO
       (.m00_axi_aclk(m00_axi_aclk),
        .m00_axi_bready(m00_axi_bready),
        .m00_axi_bvalid(m00_axi_bvalid),
        .m00_axi_wready(m00_axi_wready),
        .out(out),
        .sig_init_reg_reg_0(sig_init_reg),
        .sig_init_reg_reg_1(sig_init_reg_reg),
        .sig_init_reg_reg_2(sig_init_reg_reg_0),
        .sig_m_valid_dup_reg(sig_m_valid_dup_reg),
        .sig_rdwr_reset_reg_reg(sig_rdwr_reset_reg_reg),
        .sig_s_ready_dup_reg(sig_s_ready_dup_reg),
        .sig_s_ready_dup_reg_0(sig_s_ready_dup_reg_0));
endmodule

module design_1_myip_burst_read_test_1_0_cntr_incr_decr_addn_f
   (Q,
    sig_inhibit_rdy_n,
    \INFERRED_GEN.cnt_i_reg[0]_0 ,
    m00_axi_bvalid,
    out,
    m00_axi_aclk);
  output [2:0]Q;
  input sig_inhibit_rdy_n;
  input \INFERRED_GEN.cnt_i_reg[0]_0 ;
  input m00_axi_bvalid;
  input out;
  input m00_axi_aclk;

  wire \INFERRED_GEN.cnt_i[1]_i_1_n_0 ;
  wire \INFERRED_GEN.cnt_i[2]_i_1_n_0 ;
  wire \INFERRED_GEN.cnt_i_reg[0]_0 ;
  wire [2:0]Q;
  wire [0:0]addr_i_p1;
  wire m00_axi_aclk;
  wire m00_axi_bvalid;
  wire out;
  wire sig_inhibit_rdy_n;

  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    Cnt_p10
       (.I0(Q[0]),
        .I1(sig_inhibit_rdy_n),
        .I2(\INFERRED_GEN.cnt_i_reg[0]_0 ),
        .I3(m00_axi_bvalid),
        .O(addr_i_p1));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \INFERRED_GEN.cnt_i[1]_i_1 
       (.I0(Q[0]),
        .I1(m00_axi_bvalid),
        .I2(\INFERRED_GEN.cnt_i_reg[0]_0 ),
        .I3(sig_inhibit_rdy_n),
        .I4(Q[1]),
        .O(\INFERRED_GEN.cnt_i[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \INFERRED_GEN.cnt_i[2]_i_1 
       (.I0(Q[1]),
        .I1(sig_inhibit_rdy_n),
        .I2(\INFERRED_GEN.cnt_i_reg[0]_0 ),
        .I3(m00_axi_bvalid),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(\INFERRED_GEN.cnt_i[2]_i_1_n_0 ));
  FDSE \INFERRED_GEN.cnt_i_reg[0] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1),
        .Q(Q[0]),
        .S(out));
  FDSE \INFERRED_GEN.cnt_i_reg[1] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\INFERRED_GEN.cnt_i[1]_i_1_n_0 ),
        .Q(Q[1]),
        .S(out));
  FDSE \INFERRED_GEN.cnt_i_reg[2] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\INFERRED_GEN.cnt_i[2]_i_1_n_0 ),
        .Q(Q[2]),
        .S(out));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_myip_burst_read_test_0_1,myip_burst_read_test_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "myip_burst_read_test_v1_0,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module design_1_myip_burst_read_test_1_0
   (ip2bus_mst_addr,
    ip2bus_mst_length,
    bus2ip_mstrd_d,
    ip2bus_inputs,
    ip2bus_otputs,
    m00_axi_awid,
    m00_axi_awaddr,
    m00_axi_awlen,
    m00_axi_awsize,
    m00_axi_awburst,
    m00_axi_awlock,
    m00_axi_awcache,
    m00_axi_awprot,
    m00_axi_awqos,
    m00_axi_awuser,
    m00_axi_awvalid,
    m00_axi_awready,
    m00_axi_wdata,
    m00_axi_wstrb,
    m00_axi_wlast,
    m00_axi_wuser,
    m00_axi_wvalid,
    m00_axi_wready,
    m00_axi_bid,
    m00_axi_bresp,
    m00_axi_buser,
    m00_axi_bvalid,
    m00_axi_bready,
    m00_axi_arid,
    m00_axi_araddr,
    m00_axi_arlen,
    m00_axi_arsize,
    m00_axi_arburst,
    m00_axi_arlock,
    m00_axi_arcache,
    m00_axi_arprot,
    m00_axi_arqos,
    m00_axi_aruser,
    m00_axi_arvalid,
    m00_axi_arready,
    m00_axi_rid,
    m00_axi_rdata,
    m00_axi_rresp,
    m00_axi_rlast,
    m00_axi_ruser,
    m00_axi_rvalid,
    m00_axi_rready,
    m00_axi_aclk,
    m00_axi_aresetn,
    m00_axi_init_axi_txn,
    m00_axi_txn_done,
    m00_axi_error);
  input [31:0]ip2bus_mst_addr;
  input [11:0]ip2bus_mst_length;
  output [31:0]bus2ip_mstrd_d;
  input [4:0]ip2bus_inputs;
  output [5:0]ip2bus_otputs;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWID" *) output [0:0]m00_axi_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *) output [31:0]m00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWLEN" *) output [7:0]m00_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWSIZE" *) output [2:0]m00_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWBURST" *) output [1:0]m00_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWLOCK" *) output m00_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWCACHE" *) output [3:0]m00_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWPROT" *) output [2:0]m00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWQOS" *) output [3:0]m00_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWUSER" *) output [0:0]m00_axi_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID" *) output m00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWREADY" *) input m00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA" *) output [31:0]m00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB" *) output [3:0]m00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WLAST" *) output m00_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WUSER" *) output [0:0]m00_axi_wuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WVALID" *) output m00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WREADY" *) input m00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BID" *) input [0:0]m00_axi_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BRESP" *) input [1:0]m00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BUSER" *) input [0:0]m00_axi_buser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BVALID" *) input m00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BREADY" *) output m00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARID" *) output [0:0]m00_axi_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR" *) output [31:0]m00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARLEN" *) output [7:0]m00_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARSIZE" *) output [2:0]m00_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARBURST" *) output [1:0]m00_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARLOCK" *) output m00_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARCACHE" *) output [3:0]m00_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARPROT" *) output [2:0]m00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARQOS" *) output [3:0]m00_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARUSER" *) output [0:0]m00_axi_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARVALID" *) output m00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARREADY" *) input m00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RID" *) input [0:0]m00_axi_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RDATA" *) input [31:0]m00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RRESP" *) input [1:0]m00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RLAST" *) input m00_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RUSER" *) input [0:0]m00_axi_ruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RVALID" *) input m00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 1, RUSER_WIDTH 1, BUSER_WIDTH 1, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_2_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) output m00_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M00_AXI_CLK CLK, xilinx.com:signal:clock:1.0 m00_axi_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI_CLK, ASSOCIATED_BUSIF M00_AXI, ASSOCIATED_RESET m00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, XIL_INTERFACENAME m00_axi_aclk, ASSOCIATED_RESET m00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_2_FCLK_CLK0, ASSOCIATED_BUSIF M00_AXI" *) input m00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 M00_AXI_RST RST, xilinx.com:signal:reset:1.0 m00_axi_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI_RST, POLARITY ACTIVE_LOW, XIL_INTERFACENAME m00_axi_aresetn, POLARITY ACTIVE_LOW" *) input m00_axi_aresetn;
  input m00_axi_init_axi_txn;
  output m00_axi_txn_done;
  output m00_axi_error;

  wire \<const0> ;
  wire \<const1> ;
  wire [31:0]bus2ip_mstrd_d;
  wire [4:0]ip2bus_inputs;
  wire [31:0]ip2bus_mst_addr;
  wire [11:0]ip2bus_mst_length;
  wire [4:0]\^ip2bus_otputs ;
  wire m00_axi_aclk;
  wire [31:0]m00_axi_araddr;
  wire [0:0]\^m00_axi_arburst ;
  wire m00_axi_aresetn;
  wire [3:0]\^m00_axi_arlen ;
  wire m00_axi_arready;
  wire [1:1]\^m00_axi_arsize ;
  wire m00_axi_arvalid;
  wire m00_axi_bready;
  wire m00_axi_bvalid;
  wire [31:0]m00_axi_rdata;
  wire m00_axi_rlast;
  wire m00_axi_rready;
  wire [1:0]m00_axi_rresp;
  wire m00_axi_rvalid;
  wire m00_axi_wready;
  wire [2:2]\^m00_axi_wstrb ;
  wire m00_axi_wvalid;

  assign ip2bus_otputs[5] = \<const0> ;
  assign ip2bus_otputs[4:0] = \^ip2bus_otputs [4:0];
  assign m00_axi_arburst[1] = \<const0> ;
  assign m00_axi_arburst[0] = \^m00_axi_arburst [0];
  assign m00_axi_arcache[3] = \<const0> ;
  assign m00_axi_arcache[2] = \<const0> ;
  assign m00_axi_arcache[1] = \<const1> ;
  assign m00_axi_arcache[0] = \<const1> ;
  assign m00_axi_arid[0] = \<const0> ;
  assign m00_axi_arlen[7] = \<const0> ;
  assign m00_axi_arlen[6] = \<const0> ;
  assign m00_axi_arlen[5] = \<const0> ;
  assign m00_axi_arlen[4] = \<const0> ;
  assign m00_axi_arlen[3:0] = \^m00_axi_arlen [3:0];
  assign m00_axi_arlock = \<const0> ;
  assign m00_axi_arprot[2] = \<const0> ;
  assign m00_axi_arprot[1] = \<const0> ;
  assign m00_axi_arprot[0] = \<const0> ;
  assign m00_axi_arqos[3] = \<const1> ;
  assign m00_axi_arqos[2] = \<const1> ;
  assign m00_axi_arqos[1] = \<const1> ;
  assign m00_axi_arqos[0] = \<const1> ;
  assign m00_axi_arsize[2] = \<const0> ;
  assign m00_axi_arsize[1] = \^m00_axi_arsize [1];
  assign m00_axi_arsize[0] = \<const0> ;
  assign m00_axi_aruser[0] = \<const1> ;
  assign m00_axi_awaddr[31:0] = m00_axi_araddr;
  assign m00_axi_awburst[1] = \<const0> ;
  assign m00_axi_awburst[0] = \^m00_axi_arburst [0];
  assign m00_axi_awcache[3] = \<const0> ;
  assign m00_axi_awcache[2] = \<const0> ;
  assign m00_axi_awcache[1] = \<const1> ;
  assign m00_axi_awcache[0] = \<const1> ;
  assign m00_axi_awid[0] = \<const0> ;
  assign m00_axi_awlen[7] = \<const0> ;
  assign m00_axi_awlen[6] = \<const0> ;
  assign m00_axi_awlen[5] = \<const0> ;
  assign m00_axi_awlen[4] = \<const0> ;
  assign m00_axi_awlen[3:0] = \^m00_axi_arlen [3:0];
  assign m00_axi_awlock = \<const0> ;
  assign m00_axi_awprot[2] = \<const0> ;
  assign m00_axi_awprot[1] = \<const0> ;
  assign m00_axi_awprot[0] = \<const0> ;
  assign m00_axi_awqos[3] = \<const1> ;
  assign m00_axi_awqos[2] = \<const1> ;
  assign m00_axi_awqos[1] = \<const1> ;
  assign m00_axi_awqos[0] = \<const1> ;
  assign m00_axi_awsize[2] = \<const0> ;
  assign m00_axi_awsize[1] = \^m00_axi_arsize [1];
  assign m00_axi_awsize[0] = \<const0> ;
  assign m00_axi_awuser[0] = \<const0> ;
  assign m00_axi_awvalid = \<const0> ;
  assign m00_axi_wdata[31] = \<const0> ;
  assign m00_axi_wdata[30] = \<const0> ;
  assign m00_axi_wdata[29] = \<const0> ;
  assign m00_axi_wdata[28] = \<const0> ;
  assign m00_axi_wdata[27] = \<const0> ;
  assign m00_axi_wdata[26] = \<const0> ;
  assign m00_axi_wdata[25] = \<const0> ;
  assign m00_axi_wdata[24] = \<const0> ;
  assign m00_axi_wdata[23] = \<const0> ;
  assign m00_axi_wdata[22] = \<const0> ;
  assign m00_axi_wdata[21] = \<const0> ;
  assign m00_axi_wdata[20] = \<const0> ;
  assign m00_axi_wdata[19] = \<const0> ;
  assign m00_axi_wdata[18] = \<const0> ;
  assign m00_axi_wdata[17] = \<const0> ;
  assign m00_axi_wdata[16] = \<const0> ;
  assign m00_axi_wdata[15] = \<const0> ;
  assign m00_axi_wdata[14] = \<const0> ;
  assign m00_axi_wdata[13] = \<const0> ;
  assign m00_axi_wdata[12] = \<const0> ;
  assign m00_axi_wdata[11] = \<const0> ;
  assign m00_axi_wdata[10] = \<const0> ;
  assign m00_axi_wdata[9] = \<const0> ;
  assign m00_axi_wdata[8] = \<const0> ;
  assign m00_axi_wdata[7] = \<const0> ;
  assign m00_axi_wdata[6] = \<const0> ;
  assign m00_axi_wdata[5] = \<const0> ;
  assign m00_axi_wdata[4] = \<const0> ;
  assign m00_axi_wdata[3] = \<const0> ;
  assign m00_axi_wdata[2] = \<const0> ;
  assign m00_axi_wdata[1] = \<const0> ;
  assign m00_axi_wdata[0] = \<const0> ;
  assign m00_axi_wlast = \<const0> ;
  assign m00_axi_wstrb[3] = \^m00_axi_wstrb [2];
  assign m00_axi_wstrb[2] = \^m00_axi_wstrb [2];
  assign m00_axi_wstrb[1] = \^m00_axi_wstrb [2];
  assign m00_axi_wstrb[0] = \^m00_axi_wstrb [2];
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  design_1_myip_burst_read_test_1_0_myip_burst_read_test_v1_0 inst
       (.bus2ip_mstrd_d(bus2ip_mstrd_d),
        .ip2bus_inputs(ip2bus_inputs[2:0]),
        .ip2bus_mst_addr(ip2bus_mst_addr),
        .ip2bus_mst_length(ip2bus_mst_length),
        .ip2bus_otputs(\^ip2bus_otputs ),
        .m00_axi_aclk(m00_axi_aclk),
        .m00_axi_araddr(m00_axi_araddr),
        .m00_axi_arburst(\^m00_axi_arburst ),
        .m00_axi_aresetn(m00_axi_aresetn),
        .m00_axi_arlen(\^m00_axi_arlen ),
        .m00_axi_arready(m00_axi_arready),
        .m00_axi_arsize(\^m00_axi_arsize ),
        .m00_axi_arvalid(m00_axi_arvalid),
        .m00_axi_bready(m00_axi_bready),
        .m00_axi_bvalid(m00_axi_bvalid),
        .m00_axi_rdata(m00_axi_rdata),
        .m00_axi_rlast(m00_axi_rlast),
        .m00_axi_rready(m00_axi_rready),
        .m00_axi_rresp(m00_axi_rresp),
        .m00_axi_rvalid(m00_axi_rvalid),
        .m00_axi_wready(m00_axi_wready),
        .m00_axi_wstrb(\^m00_axi_wstrb ),
        .m00_axi_wvalid(m00_axi_wvalid));
endmodule

module design_1_myip_burst_read_test_1_0_myip_burst_read_test_v1_0
   (bus2ip_mstrd_d,
    m00_axi_wvalid,
    m00_axi_araddr,
    m00_axi_arlen,
    m00_axi_arsize,
    m00_axi_arburst,
    m00_axi_arvalid,
    ip2bus_otputs,
    m00_axi_rready,
    m00_axi_bready,
    m00_axi_wstrb,
    m00_axi_bvalid,
    m00_axi_aresetn,
    m00_axi_aclk,
    m00_axi_rdata,
    ip2bus_inputs,
    ip2bus_mst_length,
    ip2bus_mst_addr,
    m00_axi_rvalid,
    m00_axi_rlast,
    m00_axi_rresp,
    m00_axi_wready,
    m00_axi_arready);
  output [31:0]bus2ip_mstrd_d;
  output m00_axi_wvalid;
  output [31:0]m00_axi_araddr;
  output [3:0]m00_axi_arlen;
  output [0:0]m00_axi_arsize;
  output [0:0]m00_axi_arburst;
  output m00_axi_arvalid;
  output [4:0]ip2bus_otputs;
  output m00_axi_rready;
  output m00_axi_bready;
  output [0:0]m00_axi_wstrb;
  input m00_axi_bvalid;
  input m00_axi_aresetn;
  input m00_axi_aclk;
  input [31:0]m00_axi_rdata;
  input [2:0]ip2bus_inputs;
  input [11:0]ip2bus_mst_length;
  input [31:0]ip2bus_mst_addr;
  input m00_axi_rvalid;
  input m00_axi_rlast;
  input [1:0]m00_axi_rresp;
  input m00_axi_wready;
  input m00_axi_arready;

  wire [31:0]bus2ip_mstrd_d;
  wire [2:0]ip2bus_inputs;
  wire [31:0]ip2bus_mst_addr;
  wire [11:0]ip2bus_mst_length;
  wire [4:0]ip2bus_otputs;
  wire m00_axi_aclk;
  wire [31:0]m00_axi_araddr;
  wire [0:0]m00_axi_arburst;
  wire m00_axi_aresetn;
  wire [3:0]m00_axi_arlen;
  wire m00_axi_arready;
  wire [0:0]m00_axi_arsize;
  wire m00_axi_arvalid;
  wire m00_axi_bready;
  wire m00_axi_bvalid;
  wire [31:0]m00_axi_rdata;
  wire m00_axi_rlast;
  wire m00_axi_rready;
  wire [1:0]m00_axi_rresp;
  wire m00_axi_rvalid;
  wire m00_axi_wready;
  wire [0:0]m00_axi_wstrb;
  wire m00_axi_wvalid;

  design_1_myip_burst_read_test_1_0_axi_master_burst myip_burst_test_v1_0_M00_AXI_inst
       (.bus2ip_mstrd_d(bus2ip_mstrd_d),
        .ip2bus_inputs(ip2bus_inputs),
        .ip2bus_mst_addr(ip2bus_mst_addr),
        .ip2bus_mst_length(ip2bus_mst_length),
        .ip2bus_otputs(ip2bus_otputs),
        .m00_axi_aclk(m00_axi_aclk),
        .m00_axi_araddr(m00_axi_araddr),
        .m00_axi_arburst(m00_axi_arburst),
        .m00_axi_aresetn(m00_axi_aresetn),
        .m00_axi_arlen(m00_axi_arlen),
        .m00_axi_arready(m00_axi_arready),
        .m00_axi_arsize(m00_axi_arsize),
        .m00_axi_arvalid(m00_axi_arvalid),
        .m00_axi_bready(m00_axi_bready),
        .m00_axi_bvalid(m00_axi_bvalid),
        .m00_axi_rdata(m00_axi_rdata),
        .m00_axi_rlast(m00_axi_rlast),
        .m00_axi_rready(m00_axi_rready),
        .m00_axi_rresp(m00_axi_rresp),
        .m00_axi_rvalid(m00_axi_rvalid),
        .m00_axi_wready(m00_axi_wready),
        .m00_axi_wstrb(m00_axi_wstrb),
        .m00_axi_wvalid(m00_axi_wvalid));
endmodule

module design_1_myip_burst_read_test_1_0_srl_fifo_f
   (m00_axi_bready,
    out,
    m00_axi_aclk,
    m00_axi_bvalid,
    sig_inhibit_rdy_n);
  output m00_axi_bready;
  input out;
  input m00_axi_aclk;
  input m00_axi_bvalid;
  input sig_inhibit_rdy_n;

  wire m00_axi_aclk;
  wire m00_axi_bready;
  wire m00_axi_bvalid;
  wire out;
  wire sig_inhibit_rdy_n;

  design_1_myip_burst_read_test_1_0_srl_fifo_rbu_f I_SRL_FIFO_RBU_F
       (.m00_axi_aclk(m00_axi_aclk),
        .m00_axi_bready(m00_axi_bready),
        .m00_axi_bvalid(m00_axi_bvalid),
        .out(out),
        .sig_inhibit_rdy_n(sig_inhibit_rdy_n));
endmodule

module design_1_myip_burst_read_test_1_0_srl_fifo_rbu_f
   (m00_axi_bready,
    out,
    m00_axi_aclk,
    m00_axi_bvalid,
    sig_inhibit_rdy_n);
  output m00_axi_bready;
  input out;
  input m00_axi_aclk;
  input m00_axi_bvalid;
  input sig_inhibit_rdy_n;

  wire CNTR_INCR_DECR_ADDN_F_I_n_1;
  wire CNTR_INCR_DECR_ADDN_F_I_n_2;
  wire FIFO_Full_reg_n_0;
  wire fifo_full_p1__0;
  wire m00_axi_aclk;
  wire m00_axi_bready;
  wire m00_axi_bvalid;
  wire out;
  wire sig_inhibit_rdy_n;
  wire sig_rd_empty;

  design_1_myip_burst_read_test_1_0_cntr_incr_decr_addn_f CNTR_INCR_DECR_ADDN_F_I
       (.\INFERRED_GEN.cnt_i_reg[0]_0 (FIFO_Full_reg_n_0),
        .Q({sig_rd_empty,CNTR_INCR_DECR_ADDN_F_I_n_1,CNTR_INCR_DECR_ADDN_F_I_n_2}),
        .m00_axi_aclk(m00_axi_aclk),
        .m00_axi_bvalid(m00_axi_bvalid),
        .out(out),
        .sig_inhibit_rdy_n(sig_inhibit_rdy_n));
  FDRE FIFO_Full_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(fifo_full_p1__0),
        .Q(FIFO_Full_reg_n_0),
        .R(out));
  LUT6 #(
    .INIT(64'h000000000400A2AA)) 
    fifo_full_p1
       (.I0(CNTR_INCR_DECR_ADDN_F_I_n_1),
        .I1(sig_inhibit_rdy_n),
        .I2(FIFO_Full_reg_n_0),
        .I3(m00_axi_bvalid),
        .I4(CNTR_INCR_DECR_ADDN_F_I_n_2),
        .I5(sig_rd_empty),
        .O(fifo_full_p1__0));
  LUT2 #(
    .INIT(4'h2)) 
    m00_axi_bready_INST_0
       (.I0(sig_inhibit_rdy_n),
        .I1(FIFO_Full_reg_n_0),
        .O(m00_axi_bready));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
