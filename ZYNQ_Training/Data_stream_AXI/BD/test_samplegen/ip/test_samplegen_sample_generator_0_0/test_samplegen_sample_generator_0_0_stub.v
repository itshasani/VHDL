// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Mon Aug 26 01:08:30 2024
// Host        : DESKTOP-66KU93O running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {e:/LEARNING/VHDL
//               REP/ZYNQ_Training/Data_stream_AXI/BD/test_samplegen/ip/test_samplegen_sample_generator_0_0/test_samplegen_sample_generator_0_0_stub.v}
// Design      : test_samplegen_sample_generator_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "sample_generator_v1_0,Vivado 2023.1" *)
module test_samplegen_sample_generator_0_0(FrameSize, En, AXI_En, s_axis_aclk, 
  s_axis_aresetn, s_axis_tready, s_axis_tdata, s_axis_tstrb, s_axis_tlast, s_axis_tvalid, 
  m_axis_aclk, m_axis_aresetn, m_axis_tvalid, m_axis_tdata, m_axis_tstrb, m_axis_tlast, 
  m_axis_tready)
/* synthesis syn_black_box black_box_pad_pin="FrameSize[7:0],En,AXI_En,s_axis_aresetn,s_axis_tready,s_axis_tdata[31:0],s_axis_tstrb[3:0],s_axis_tlast,s_axis_tvalid,m_axis_aresetn,m_axis_tvalid,m_axis_tdata[31:0],m_axis_tstrb[3:0],m_axis_tlast,m_axis_tready" */
/* synthesis syn_force_seq_prim="s_axis_aclk" */
/* synthesis syn_force_seq_prim="m_axis_aclk" */;
  input [7:0]FrameSize;
  input En;
  input AXI_En;
  input s_axis_aclk /* synthesis syn_isclock = 1 */;
  input s_axis_aresetn;
  output s_axis_tready;
  input [31:0]s_axis_tdata;
  input [3:0]s_axis_tstrb;
  input s_axis_tlast;
  input s_axis_tvalid;
  input m_axis_aclk /* synthesis syn_isclock = 1 */;
  input m_axis_aresetn;
  output m_axis_tvalid;
  output [31:0]m_axis_tdata;
  output [3:0]m_axis_tstrb;
  output m_axis_tlast;
  input m_axis_tready;
endmodule
