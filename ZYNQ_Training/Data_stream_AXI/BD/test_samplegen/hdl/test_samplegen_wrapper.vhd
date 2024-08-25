--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
--Date        : Mon Aug 26 01:07:04 2024
--Host        : DESKTOP-66KU93O running 64-bit major release  (build 9200)
--Command     : generate_target test_samplegen_wrapper.bd
--Design      : test_samplegen_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity test_samplegen_wrapper is
  port (
    AXI_En : in STD_LOGIC;
    En : in STD_LOGIC;
    FrameSize : in STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXIS_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXIS_tlast : out STD_LOGIC;
    M_AXIS_tready : in STD_LOGIC;
    M_AXIS_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXIS_tvalid : out STD_LOGIC;
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXIS_tlast : in STD_LOGIC;
    S_AXIS_tready : out STD_LOGIC;
    S_AXIS_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXIS_tvalid : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_aresetn : in STD_LOGIC
  );
end test_samplegen_wrapper;

architecture STRUCTURE of test_samplegen_wrapper is
  component test_samplegen is
  port (
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXIS_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXIS_tlast : in STD_LOGIC;
    S_AXIS_tvalid : in STD_LOGIC;
    S_AXIS_tready : out STD_LOGIC;
    M_AXIS_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXIS_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXIS_tlast : out STD_LOGIC;
    M_AXIS_tvalid : out STD_LOGIC;
    M_AXIS_tready : in STD_LOGIC;
    FrameSize : in STD_LOGIC_VECTOR ( 7 downto 0 );
    En : in STD_LOGIC;
    AXI_En : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_aresetn : in STD_LOGIC
  );
  end component test_samplegen;
begin
test_samplegen_i: component test_samplegen
     port map (
      AXI_En => AXI_En,
      En => En,
      FrameSize(7 downto 0) => FrameSize(7 downto 0),
      M_AXIS_tdata(31 downto 0) => M_AXIS_tdata(31 downto 0),
      M_AXIS_tlast => M_AXIS_tlast,
      M_AXIS_tready => M_AXIS_tready,
      M_AXIS_tstrb(3 downto 0) => M_AXIS_tstrb(3 downto 0),
      M_AXIS_tvalid => M_AXIS_tvalid,
      S_AXIS_tdata(31 downto 0) => S_AXIS_tdata(31 downto 0),
      S_AXIS_tlast => S_AXIS_tlast,
      S_AXIS_tready => S_AXIS_tready,
      S_AXIS_tstrb(3 downto 0) => S_AXIS_tstrb(3 downto 0),
      S_AXIS_tvalid => S_AXIS_tvalid,
      s_axis_aclk => s_axis_aclk,
      s_axis_aresetn => s_axis_aresetn
    );
end STRUCTURE;
