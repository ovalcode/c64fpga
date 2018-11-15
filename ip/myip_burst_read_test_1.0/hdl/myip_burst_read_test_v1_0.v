
`timescale 1 ns / 1 ps

	module myip_burst_read_test_v1_0 #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Master Bus Interface M00_AXI
		parameter  C_M00_AXI_TARGET_SLAVE_BASE_ADDR	= 32'h40000000,
		parameter integer C_M00_AXI_BURST_LEN	= 16,
		parameter integer C_M00_AXI_ID_WIDTH	= 1,
		parameter integer C_M00_AXI_ADDR_WIDTH	= 32,
		parameter integer C_M00_AXI_DATA_WIDTH	= 32,
		parameter integer C_M00_AXI_AWUSER_WIDTH	= 0,
		parameter integer C_M00_AXI_ARUSER_WIDTH	= 0,
		parameter integer C_M00_AXI_WUSER_WIDTH	= 0,
		parameter integer C_M00_AXI_RUSER_WIDTH	= 0,
		parameter integer C_M00_AXI_BUSER_WIDTH	= 0
	)
	(
		// Users to add ports here
        input wire [31:0] ip2bus_mst_addr,
        input wire [11:0] ip2bus_mst_length,
        output wire [31:0] bus2ip_mstrd_d,
        input wire [4:0] ip2bus_inputs,
        output wire [5:0] ip2bus_otputs,

		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Master Bus Interface M00_AXI
		input wire  m00_axi_init_axi_txn,
		output wire  m00_axi_txn_done,
		output wire  m00_axi_error,
		input wire  m00_axi_aclk,
		input wire  m00_axi_aresetn,
		output wire [C_M00_AXI_ID_WIDTH-1 : 0] m00_axi_awid,
		output wire [C_M00_AXI_ADDR_WIDTH-1 : 0] m00_axi_awaddr,
		output wire [7 : 0] m00_axi_awlen,
		output wire [2 : 0] m00_axi_awsize,
		output wire [1 : 0] m00_axi_awburst,
		output wire  m00_axi_awlock,
		output wire [3 : 0] m00_axi_awcache,
		output wire [2 : 0] m00_axi_awprot,
		output wire [3 : 0] m00_axi_awqos,
		output wire [C_M00_AXI_AWUSER_WIDTH-1 : 0] m00_axi_awuser,
		output wire  m00_axi_awvalid,
		input wire  m00_axi_awready,
		output wire [C_M00_AXI_DATA_WIDTH-1 : 0] m00_axi_wdata,
		output wire [C_M00_AXI_DATA_WIDTH/8-1 : 0] m00_axi_wstrb,
		output wire  m00_axi_wlast,
		output wire [C_M00_AXI_WUSER_WIDTH-1 : 0] m00_axi_wuser,
		output wire  m00_axi_wvalid,
		input wire  m00_axi_wready,
		input wire [C_M00_AXI_ID_WIDTH-1 : 0] m00_axi_bid,
		input wire [1 : 0] m00_axi_bresp,
		input wire [C_M00_AXI_BUSER_WIDTH-1 : 0] m00_axi_buser,
		input wire  m00_axi_bvalid,
		output wire  m00_axi_bready,
		output wire [C_M00_AXI_ID_WIDTH-1 : 0] m00_axi_arid,
		output wire [C_M00_AXI_ADDR_WIDTH-1 : 0] m00_axi_araddr,
		output wire [7 : 0] m00_axi_arlen,
		output wire [2 : 0] m00_axi_arsize,
		output wire [1 : 0] m00_axi_arburst,
		output wire  m00_axi_arlock,
		output wire [3 : 0] m00_axi_arcache,
		output wire [2 : 0] m00_axi_arprot,
		output wire [3 : 0] m00_axi_arqos,
		output wire [C_M00_AXI_ARUSER_WIDTH-1 : 0] m00_axi_aruser,
		output wire  m00_axi_arvalid,
		input wire  m00_axi_arready,
		input wire [C_M00_AXI_ID_WIDTH-1 : 0] m00_axi_rid,
		input wire [C_M00_AXI_DATA_WIDTH-1 : 0] m00_axi_rdata,
		input wire [1 : 0] m00_axi_rresp,
		input wire  m00_axi_rlast,
		input wire [C_M00_AXI_RUSER_WIDTH-1 : 0] m00_axi_ruser,
		input wire  m00_axi_rvalid,
		output wire  m00_axi_rready
	);

  //inputs	
  wire ip2bus_mstrd_req;
  wire ip2bus_mst_type;
  wire ip2bus_mstrd_dst_rdy_n;
  
  //outputs
  wire bus2ip_mst_cmdack;
  wire bus2ip_mst_cmplt; 
  wire bus2ip_mst_error;
  wire md_error;
  wire bus2ip_mstrd_src_rdy_n;	

// Instantiation of Axi Bus Interface M00_AXI
axi_master_burst myip_burst_test_v1_0_M00_AXI_inst
  (

    .m_axi_aclk(m00_axi_aclk),

    .m_axi_aresetn(m00_axi_aresetn),


//TODO
    .md_error(md_error),




    .m_axi_arready(m00_axi_arready),
    .m_axi_arvalid(m00_axi_arvalid),
    .m_axi_araddr(m00_axi_araddr),
    .m_axi_arlen(m00_axi_arlen),
    .m_axi_arsize(m00_axi_arsize),
    .m_axi_arburst(m00_axi_arburst),
    .m_axi_arprot(m00_axi_arprot),
    .m_axi_arcache(m00_axi_arcache),
    .m_axi_rready(m00_axi_rready),
    .m_axi_rvalid(m00_axi_rvalid),
    .m_axi_rdata(m00_axi_rdata),
    .m_axi_rresp(m00_axi_rresp),
    .m_axi_rlast(m00_axi_rlast),

    .m_axi_awready(m00_axi_awready),
    .m_axi_awvalid(m00_axi_awvalid),
    .m_axi_awaddr(m00_axi_awaddr),
    .m_axi_awlen(m00_axi_awlen),
    .m_axi_awsize(m00_axi_awsize),
    .m_axi_awburst(m00_axi_awburst),
    .m_axi_awprot(m00_axi_awprot),
    .m_axi_awcache(m00_axi_awcache),
    .m_axi_wready(m00_axi_wready),
    .m_axi_wvalid(m00_axi_wvalid),
    .m_axi_wdata(m00_axi_wdata),
               
    .m_axi_wstrb(m00_axi_wstrb),
    .m_axi_wlast(m00_axi_wlast),
    .m_axi_bready(m00_axi_bready),
    .m_axi_bvalid(m00_axi_bvalid),
    .m_axi_bresp(m00_axi_bresp),

    .ip2bus_mstrd_req(ip2bus_mstrd_req), //tie to 0
    .ip2bus_mstwr_req(1'b0), //tie to custom
    .ip2bus_mst_addr(ip2bus_mst_addr), //tie to custom
    .ip2bus_mst_length(ip2bus_mst_length), //tie to custom
//    .ip2bus_mst_be(), // link to unknown
    .ip2bus_mst_type(ip2bus_mst_type),//tie to custom
    .ip2bus_mst_lock(1'b0),//tie to 0
    .ip2bus_mst_reset(1'b0),//tie to 0


    .bus2ip_mst_cmdack(bus2ip_mst_cmdack), //tie to custom
    .bus2ip_mst_cmplt(bus2ip_mst_cmplt), //tie to custom
    .bus2ip_mst_error(bus2ip_mst_error), //tie to custom
//    .bus2ip_mst_rearbitrate(), //tie to 0
//    .bus2ip_mst_cmd_timeout(), //tie to 0


//    .bus2ip_mstrd_d(), // do not connect
//    .bus2ip_mstrd_rem(), // do not connect
//    .bus2ip_mstrd_sof_n (), // do not connect
//    .bus2ip_mstrd_eof_n  (), // do not connect
//    .bus2ip_mstrd_src_rdy_n(), // do not connect
//    .bus2ip_mstrd_src_dsc_n(), // do not connect

//    .ip2bus_mstrd_dst_rdy_n(), // do not connect
//    .ip2bus_mstrd_dst_dsc_n(), // do not connect


    //.ip2bus_mstwr_d(ip2bus_mstwr_d), //connect to custom
    .bus2ip_mstrd_d(bus2ip_mstrd_d), //connect to custom
    .ip2bus_mstwr_rem(4'h0), //connect to custom
    //.ip2bus_mstwr_sof_n(ip2bus_mstwr_sof_n), //connect to custom
    //.ip2bus_mstwr_eof_n(ip2bus_mstwr_eof_n), //connect to custom
    //.ip2bus_mstwr_src_rdy_n(ip2bus_mstwr_src_rdy_n), //connect to custom
    .bus2ip_mstrd_src_rdy_n(bus2ip_mstrd_src_rdy_n),
    .ip2bus_mstrd_dst_rdy_n(ip2bus_mstrd_dst_rdy_n),
    .ip2bus_mstwr_src_dsc_n(1'b1), //connect to 1
    .ip2bus_mstrd_dst_dsc_n(1'b1)

    //.bus2ip_mstwr_dst_rdy_n(bus2ip_mstwr_dst_rdy_n), // connect to custom
    //.bus2ip_mstwr_dst_dsc_n(bus2ip_mstwr_dst_dsc_n) //connect to 1

    );

	// Add user logic here
    assign ip2bus_mstrd_req = ip2bus_inputs[0];
    assign ip2bus_mst_type = ip2bus_inputs[1];
    assign ip2bus_mstrd_dst_rdy_n = ip2bus_inputs[2];
    
    
    assign ip2bus_otputs[0] = bus2ip_mst_cmdack; 
    assign ip2bus_otputs[1] = bus2ip_mst_cmplt;
    assign ip2bus_otputs[2] = bus2ip_mst_error;
    assign ip2bus_otputs[3] = bus2ip_mstrd_src_rdy_n;     
    assign ip2bus_otputs[4] = md_error;
    assign ip2bus_otputs[5] = 1'b0;
    assign m00_axi_aruser[0] = 1'b1;
    assign m00_axi_awuser[0] = 1'b0;
    assign m00_axi_arlock = 1'b0;
    assign m00_axi_awlock = 1'b0;
    assign m00_axi_arqos = 15;
    assign m00_axi_awqos = 15;
    assign m00_axi_awid[0] = 0;
    assign m00_axi_arid[0] = 0;

	// User logic ends

	endmodule
