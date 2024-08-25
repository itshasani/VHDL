-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Mon Aug 26 01:08:30 2024
-- Host        : DESKTOP-66KU93O running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {e:/LEARNING/VHDL
--               REP/ZYNQ_Training/Data_stream_AXI/BD/test_samplegen/ip/test_samplegen_sample_generator_0_0/test_samplegen_sample_generator_0_0_sim_netlist.vhdl}
-- Design      : test_samplegen_sample_generator_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity test_samplegen_sample_generator_0_0_sample_generator_v1_0_M_AXIS is
  port (
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_aclk : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_aresetn : in STD_LOGIC;
    FrameSize : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    AXI_En : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    En : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of test_samplegen_sample_generator_0_0_sample_generator_v1_0_M_AXIS : entity is "sample_generator_v1_0_M_AXIS";
end test_samplegen_sample_generator_0_0_sample_generator_v1_0_M_AXIS;

architecture STRUCTURE of test_samplegen_sample_generator_0_0_sample_generator_v1_0_M_AXIS is
  signal \CounterR[0]_i_2_n_0\ : STD_LOGIC;
  signal CounterR_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \CounterR_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \CounterR_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \CounterR_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \CounterR_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \CounterR_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \CounterR_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \CounterR_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \CounterR_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \CounterR_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \CounterR_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \CounterR_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \CounterR_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \CounterR_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \CounterR_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \CounterR_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \CounterR_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \CounterR_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \CounterR_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \CounterR_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \CounterR_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \CounterR_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \CounterR_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \CounterR_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \CounterR_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \CounterR_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \CounterR_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \CounterR_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \CounterR_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \CounterR_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \CounterR_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \CounterR_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \CounterR_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \CounterR_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \CounterR_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \CounterR_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \CounterR_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \CounterR_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \CounterR_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \CounterR_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \CounterR_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \CounterR_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \CounterR_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \CounterR_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \CounterR_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \CounterR_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \CounterR_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \CounterR_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \CounterR_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \CounterR_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \CounterR_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \CounterR_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \CounterR_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \CounterR_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \CounterR_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \CounterR_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \CounterR_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \CounterR_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \CounterR_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \CounterR_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \CounterR_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \CounterR_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \CounterR_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \CounterR_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \^m_axis_tvalid\ : STD_LOGIC;
  signal \afterResetCycleCounterR[7]_i_3_n_0\ : STD_LOGIC;
  signal afterResetCycleCounterR_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal clear : STD_LOGIC;
  signal m_axis_tlast_INST_0_i_1_n_0 : STD_LOGIC;
  signal m_axis_tlast_INST_0_i_2_n_0 : STD_LOGIC;
  signal m_axis_tlast_INST_0_i_3_n_0 : STD_LOGIC;
  signal m_axis_tlast_INST_0_i_4_n_0 : STD_LOGIC;
  signal m_axis_tlast_INST_0_i_5_n_0 : STD_LOGIC;
  signal m_axis_tlast_INST_0_i_6_n_0 : STD_LOGIC;
  signal \packetCounter[7]_i_1_n_0\ : STD_LOGIC;
  signal \packetCounter[7]_i_2_n_0\ : STD_LOGIC;
  signal \packetCounter[7]_i_4_n_0\ : STD_LOGIC;
  signal packetCounter_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sampleGeneratorEnr : STD_LOGIC;
  signal sampleGeneratorEnr_i_1_n_0 : STD_LOGIC;
  signal sampleGeneratorEnr_i_2_n_0 : STD_LOGIC;
  signal tValidR_i_1_n_0 : STD_LOGIC;
  signal \NLW_CounterR_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \CounterR_reg[0]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \CounterR_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \CounterR_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \CounterR_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \CounterR_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \CounterR_reg[28]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \CounterR_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \CounterR_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \afterResetCycleCounterR[0]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \afterResetCycleCounterR[1]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \afterResetCycleCounterR[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \afterResetCycleCounterR[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \afterResetCycleCounterR[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \afterResetCycleCounterR[6]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \afterResetCycleCounterR[7]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m_axis_tdata[0]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m_axis_tdata[10]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m_axis_tdata[11]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_axis_tdata[12]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_axis_tdata[13]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m_axis_tdata[14]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m_axis_tdata[15]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m_axis_tdata[16]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m_axis_tdata[17]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \m_axis_tdata[18]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \m_axis_tdata[19]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \m_axis_tdata[1]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m_axis_tdata[20]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \m_axis_tdata[21]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \m_axis_tdata[22]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \m_axis_tdata[23]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \m_axis_tdata[24]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \m_axis_tdata[25]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \m_axis_tdata[26]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \m_axis_tdata[27]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \m_axis_tdata[28]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \m_axis_tdata[29]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \m_axis_tdata[2]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m_axis_tdata[30]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \m_axis_tdata[3]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m_axis_tdata[4]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m_axis_tdata[5]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m_axis_tdata[6]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m_axis_tdata[7]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \m_axis_tdata[8]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \m_axis_tdata[9]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of m_axis_tlast_INST_0_i_5 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of m_axis_tlast_INST_0_i_6 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of m_axis_tvalid_INST_0 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \packetCounter[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \packetCounter[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \packetCounter[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \packetCounter[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \packetCounter[6]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \packetCounter[7]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of sampleGeneratorEnr_i_2 : label is "soft_lutpair3";
begin
\CounterR[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => CounterR_reg(0),
      O => \CounterR[0]_i_2_n_0\
    );
\CounterR_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => \packetCounter[7]_i_2_n_0\,
      D => \CounterR_reg[0]_i_1_n_7\,
      Q => CounterR_reg(0),
      R => clear
    );
\CounterR_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CounterR_reg[0]_i_1_n_0\,
      CO(2) => \CounterR_reg[0]_i_1_n_1\,
      CO(1) => \CounterR_reg[0]_i_1_n_2\,
      CO(0) => \CounterR_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \CounterR_reg[0]_i_1_n_4\,
      O(2) => \CounterR_reg[0]_i_1_n_5\,
      O(1) => \CounterR_reg[0]_i_1_n_6\,
      O(0) => \CounterR_reg[0]_i_1_n_7\,
      S(3 downto 1) => CounterR_reg(3 downto 1),
      S(0) => \CounterR[0]_i_2_n_0\
    );
\CounterR_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => \packetCounter[7]_i_2_n_0\,
      D => \CounterR_reg[8]_i_1_n_5\,
      Q => CounterR_reg(10),
      R => clear
    );
\CounterR_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => \packetCounter[7]_i_2_n_0\,
      D => \CounterR_reg[8]_i_1_n_4\,
      Q => CounterR_reg(11),
      R => clear
    );
\CounterR_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => \packetCounter[7]_i_2_n_0\,
      D => \CounterR_reg[12]_i_1_n_7\,
      Q => CounterR_reg(12),
      R => clear
    );
\CounterR_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \CounterR_reg[8]_i_1_n_0\,
      CO(3) => \CounterR_reg[12]_i_1_n_0\,
      CO(2) => \CounterR_reg[12]_i_1_n_1\,
      CO(1) => \CounterR_reg[12]_i_1_n_2\,
      CO(0) => \CounterR_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \CounterR_reg[12]_i_1_n_4\,
      O(2) => \CounterR_reg[12]_i_1_n_5\,
      O(1) => \CounterR_reg[12]_i_1_n_6\,
      O(0) => \CounterR_reg[12]_i_1_n_7\,
      S(3 downto 0) => CounterR_reg(15 downto 12)
    );
\CounterR_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => \packetCounter[7]_i_2_n_0\,
      D => \CounterR_reg[12]_i_1_n_6\,
      Q => CounterR_reg(13),
      R => clear
    );
\CounterR_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => \packetCounter[7]_i_2_n_0\,
      D => \CounterR_reg[12]_i_1_n_5\,
      Q => CounterR_reg(14),
      R => clear
    );
\CounterR_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => \packetCounter[7]_i_2_n_0\,
      D => \CounterR_reg[12]_i_1_n_4\,
      Q => CounterR_reg(15),
      R => clear
    );
\CounterR_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => \packetCounter[7]_i_2_n_0\,
      D => \CounterR_reg[16]_i_1_n_7\,
      Q => CounterR_reg(16),
      R => clear
    );
\CounterR_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \CounterR_reg[12]_i_1_n_0\,
      CO(3) => \CounterR_reg[16]_i_1_n_0\,
      CO(2) => \CounterR_reg[16]_i_1_n_1\,
      CO(1) => \CounterR_reg[16]_i_1_n_2\,
      CO(0) => \CounterR_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \CounterR_reg[16]_i_1_n_4\,
      O(2) => \CounterR_reg[16]_i_1_n_5\,
      O(1) => \CounterR_reg[16]_i_1_n_6\,
      O(0) => \CounterR_reg[16]_i_1_n_7\,
      S(3 downto 0) => CounterR_reg(19 downto 16)
    );
\CounterR_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => \packetCounter[7]_i_2_n_0\,
      D => \CounterR_reg[16]_i_1_n_6\,
      Q => CounterR_reg(17),
      R => clear
    );
\CounterR_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => \packetCounter[7]_i_2_n_0\,
      D => \CounterR_reg[16]_i_1_n_5\,
      Q => CounterR_reg(18),
      R => clear
    );
\CounterR_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => \packetCounter[7]_i_2_n_0\,
      D => \CounterR_reg[16]_i_1_n_4\,
      Q => CounterR_reg(19),
      R => clear
    );
\CounterR_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => \packetCounter[7]_i_2_n_0\,
      D => \CounterR_reg[0]_i_1_n_6\,
      Q => CounterR_reg(1),
      R => clear
    );
\CounterR_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => \packetCounter[7]_i_2_n_0\,
      D => \CounterR_reg[20]_i_1_n_7\,
      Q => CounterR_reg(20),
      R => clear
    );
\CounterR_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \CounterR_reg[16]_i_1_n_0\,
      CO(3) => \CounterR_reg[20]_i_1_n_0\,
      CO(2) => \CounterR_reg[20]_i_1_n_1\,
      CO(1) => \CounterR_reg[20]_i_1_n_2\,
      CO(0) => \CounterR_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \CounterR_reg[20]_i_1_n_4\,
      O(2) => \CounterR_reg[20]_i_1_n_5\,
      O(1) => \CounterR_reg[20]_i_1_n_6\,
      O(0) => \CounterR_reg[20]_i_1_n_7\,
      S(3 downto 0) => CounterR_reg(23 downto 20)
    );
\CounterR_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => \packetCounter[7]_i_2_n_0\,
      D => \CounterR_reg[20]_i_1_n_6\,
      Q => CounterR_reg(21),
      R => clear
    );
\CounterR_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => \packetCounter[7]_i_2_n_0\,
      D => \CounterR_reg[20]_i_1_n_5\,
      Q => CounterR_reg(22),
      R => clear
    );
\CounterR_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => \packetCounter[7]_i_2_n_0\,
      D => \CounterR_reg[20]_i_1_n_4\,
      Q => CounterR_reg(23),
      R => clear
    );
\CounterR_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => \packetCounter[7]_i_2_n_0\,
      D => \CounterR_reg[24]_i_1_n_7\,
      Q => CounterR_reg(24),
      R => clear
    );
\CounterR_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \CounterR_reg[20]_i_1_n_0\,
      CO(3) => \CounterR_reg[24]_i_1_n_0\,
      CO(2) => \CounterR_reg[24]_i_1_n_1\,
      CO(1) => \CounterR_reg[24]_i_1_n_2\,
      CO(0) => \CounterR_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \CounterR_reg[24]_i_1_n_4\,
      O(2) => \CounterR_reg[24]_i_1_n_5\,
      O(1) => \CounterR_reg[24]_i_1_n_6\,
      O(0) => \CounterR_reg[24]_i_1_n_7\,
      S(3 downto 0) => CounterR_reg(27 downto 24)
    );
\CounterR_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => \packetCounter[7]_i_2_n_0\,
      D => \CounterR_reg[24]_i_1_n_6\,
      Q => CounterR_reg(25),
      R => clear
    );
\CounterR_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => \packetCounter[7]_i_2_n_0\,
      D => \CounterR_reg[24]_i_1_n_5\,
      Q => CounterR_reg(26),
      R => clear
    );
\CounterR_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => \packetCounter[7]_i_2_n_0\,
      D => \CounterR_reg[24]_i_1_n_4\,
      Q => CounterR_reg(27),
      R => clear
    );
\CounterR_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => \packetCounter[7]_i_2_n_0\,
      D => \CounterR_reg[28]_i_1_n_7\,
      Q => CounterR_reg(28),
      R => clear
    );
\CounterR_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \CounterR_reg[24]_i_1_n_0\,
      CO(3) => \NLW_CounterR_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \CounterR_reg[28]_i_1_n_1\,
      CO(1) => \CounterR_reg[28]_i_1_n_2\,
      CO(0) => \CounterR_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \CounterR_reg[28]_i_1_n_4\,
      O(2) => \CounterR_reg[28]_i_1_n_5\,
      O(1) => \CounterR_reg[28]_i_1_n_6\,
      O(0) => \CounterR_reg[28]_i_1_n_7\,
      S(3 downto 0) => CounterR_reg(31 downto 28)
    );
\CounterR_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => \packetCounter[7]_i_2_n_0\,
      D => \CounterR_reg[28]_i_1_n_6\,
      Q => CounterR_reg(29),
      R => clear
    );
\CounterR_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => \packetCounter[7]_i_2_n_0\,
      D => \CounterR_reg[0]_i_1_n_5\,
      Q => CounterR_reg(2),
      R => clear
    );
\CounterR_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => \packetCounter[7]_i_2_n_0\,
      D => \CounterR_reg[28]_i_1_n_5\,
      Q => CounterR_reg(30),
      R => clear
    );
\CounterR_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => \packetCounter[7]_i_2_n_0\,
      D => \CounterR_reg[28]_i_1_n_4\,
      Q => CounterR_reg(31),
      R => clear
    );
\CounterR_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => \packetCounter[7]_i_2_n_0\,
      D => \CounterR_reg[0]_i_1_n_4\,
      Q => CounterR_reg(3),
      R => clear
    );
\CounterR_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => \packetCounter[7]_i_2_n_0\,
      D => \CounterR_reg[4]_i_1_n_7\,
      Q => CounterR_reg(4),
      R => clear
    );
\CounterR_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \CounterR_reg[0]_i_1_n_0\,
      CO(3) => \CounterR_reg[4]_i_1_n_0\,
      CO(2) => \CounterR_reg[4]_i_1_n_1\,
      CO(1) => \CounterR_reg[4]_i_1_n_2\,
      CO(0) => \CounterR_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \CounterR_reg[4]_i_1_n_4\,
      O(2) => \CounterR_reg[4]_i_1_n_5\,
      O(1) => \CounterR_reg[4]_i_1_n_6\,
      O(0) => \CounterR_reg[4]_i_1_n_7\,
      S(3 downto 0) => CounterR_reg(7 downto 4)
    );
\CounterR_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => \packetCounter[7]_i_2_n_0\,
      D => \CounterR_reg[4]_i_1_n_6\,
      Q => CounterR_reg(5),
      R => clear
    );
\CounterR_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => \packetCounter[7]_i_2_n_0\,
      D => \CounterR_reg[4]_i_1_n_5\,
      Q => CounterR_reg(6),
      R => clear
    );
\CounterR_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => \packetCounter[7]_i_2_n_0\,
      D => \CounterR_reg[4]_i_1_n_4\,
      Q => CounterR_reg(7),
      R => clear
    );
\CounterR_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => \packetCounter[7]_i_2_n_0\,
      D => \CounterR_reg[8]_i_1_n_7\,
      Q => CounterR_reg(8),
      R => clear
    );
\CounterR_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \CounterR_reg[4]_i_1_n_0\,
      CO(3) => \CounterR_reg[8]_i_1_n_0\,
      CO(2) => \CounterR_reg[8]_i_1_n_1\,
      CO(1) => \CounterR_reg[8]_i_1_n_2\,
      CO(0) => \CounterR_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \CounterR_reg[8]_i_1_n_4\,
      O(2) => \CounterR_reg[8]_i_1_n_5\,
      O(1) => \CounterR_reg[8]_i_1_n_6\,
      O(0) => \CounterR_reg[8]_i_1_n_7\,
      S(3 downto 0) => CounterR_reg(11 downto 8)
    );
\CounterR_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => \packetCounter[7]_i_2_n_0\,
      D => \CounterR_reg[8]_i_1_n_6\,
      Q => CounterR_reg(9),
      R => clear
    );
\afterResetCycleCounterR[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => afterResetCycleCounterR_reg(0),
      O => plusOp(0)
    );
\afterResetCycleCounterR[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => afterResetCycleCounterR_reg(0),
      I1 => afterResetCycleCounterR_reg(1),
      O => plusOp(1)
    );
\afterResetCycleCounterR[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => afterResetCycleCounterR_reg(0),
      I1 => afterResetCycleCounterR_reg(1),
      I2 => afterResetCycleCounterR_reg(2),
      O => plusOp(2)
    );
\afterResetCycleCounterR[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => afterResetCycleCounterR_reg(1),
      I1 => afterResetCycleCounterR_reg(0),
      I2 => afterResetCycleCounterR_reg(2),
      I3 => afterResetCycleCounterR_reg(3),
      O => plusOp(3)
    );
\afterResetCycleCounterR[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => afterResetCycleCounterR_reg(2),
      I1 => afterResetCycleCounterR_reg(0),
      I2 => afterResetCycleCounterR_reg(1),
      I3 => afterResetCycleCounterR_reg(3),
      I4 => afterResetCycleCounterR_reg(4),
      O => plusOp(4)
    );
\afterResetCycleCounterR[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => afterResetCycleCounterR_reg(3),
      I1 => afterResetCycleCounterR_reg(1),
      I2 => afterResetCycleCounterR_reg(0),
      I3 => afterResetCycleCounterR_reg(2),
      I4 => afterResetCycleCounterR_reg(4),
      I5 => afterResetCycleCounterR_reg(5),
      O => plusOp(5)
    );
\afterResetCycleCounterR[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \afterResetCycleCounterR[7]_i_3_n_0\,
      I1 => afterResetCycleCounterR_reg(6),
      O => plusOp(6)
    );
\afterResetCycleCounterR[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_aresetn,
      O => clear
    );
\afterResetCycleCounterR[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \afterResetCycleCounterR[7]_i_3_n_0\,
      I1 => afterResetCycleCounterR_reg(6),
      I2 => afterResetCycleCounterR_reg(7),
      O => plusOp(7)
    );
\afterResetCycleCounterR[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => afterResetCycleCounterR_reg(5),
      I1 => afterResetCycleCounterR_reg(3),
      I2 => afterResetCycleCounterR_reg(1),
      I3 => afterResetCycleCounterR_reg(0),
      I4 => afterResetCycleCounterR_reg(2),
      I5 => afterResetCycleCounterR_reg(4),
      O => \afterResetCycleCounterR[7]_i_3_n_0\
    );
\afterResetCycleCounterR_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => '1',
      D => plusOp(0),
      Q => afterResetCycleCounterR_reg(0),
      R => clear
    );
\afterResetCycleCounterR_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => '1',
      D => plusOp(1),
      Q => afterResetCycleCounterR_reg(1),
      R => clear
    );
\afterResetCycleCounterR_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => '1',
      D => plusOp(2),
      Q => afterResetCycleCounterR_reg(2),
      R => clear
    );
\afterResetCycleCounterR_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => '1',
      D => plusOp(3),
      Q => afterResetCycleCounterR_reg(3),
      R => clear
    );
\afterResetCycleCounterR_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => '1',
      D => plusOp(4),
      Q => afterResetCycleCounterR_reg(4),
      R => clear
    );
\afterResetCycleCounterR_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => '1',
      D => plusOp(5),
      Q => afterResetCycleCounterR_reg(5),
      R => clear
    );
\afterResetCycleCounterR_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => '1',
      D => plusOp(6),
      Q => afterResetCycleCounterR_reg(6),
      R => clear
    );
\afterResetCycleCounterR_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => '1',
      D => plusOp(7),
      Q => afterResetCycleCounterR_reg(7),
      R => clear
    );
\m_axis_tdata[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis_tdata(0),
      I1 => CounterR_reg(0),
      I2 => AXI_En,
      O => m_axis_tdata(0)
    );
\m_axis_tdata[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis_tdata(10),
      I1 => CounterR_reg(10),
      I2 => AXI_En,
      O => m_axis_tdata(10)
    );
\m_axis_tdata[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis_tdata(11),
      I1 => CounterR_reg(11),
      I2 => AXI_En,
      O => m_axis_tdata(11)
    );
\m_axis_tdata[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis_tdata(12),
      I1 => CounterR_reg(12),
      I2 => AXI_En,
      O => m_axis_tdata(12)
    );
\m_axis_tdata[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis_tdata(13),
      I1 => CounterR_reg(13),
      I2 => AXI_En,
      O => m_axis_tdata(13)
    );
\m_axis_tdata[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis_tdata(14),
      I1 => CounterR_reg(14),
      I2 => AXI_En,
      O => m_axis_tdata(14)
    );
\m_axis_tdata[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis_tdata(15),
      I1 => CounterR_reg(15),
      I2 => AXI_En,
      O => m_axis_tdata(15)
    );
\m_axis_tdata[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis_tdata(16),
      I1 => CounterR_reg(16),
      I2 => AXI_En,
      O => m_axis_tdata(16)
    );
\m_axis_tdata[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis_tdata(17),
      I1 => CounterR_reg(17),
      I2 => AXI_En,
      O => m_axis_tdata(17)
    );
\m_axis_tdata[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis_tdata(18),
      I1 => CounterR_reg(18),
      I2 => AXI_En,
      O => m_axis_tdata(18)
    );
\m_axis_tdata[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis_tdata(19),
      I1 => CounterR_reg(19),
      I2 => AXI_En,
      O => m_axis_tdata(19)
    );
\m_axis_tdata[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis_tdata(1),
      I1 => CounterR_reg(1),
      I2 => AXI_En,
      O => m_axis_tdata(1)
    );
\m_axis_tdata[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis_tdata(20),
      I1 => CounterR_reg(20),
      I2 => AXI_En,
      O => m_axis_tdata(20)
    );
\m_axis_tdata[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis_tdata(21),
      I1 => CounterR_reg(21),
      I2 => AXI_En,
      O => m_axis_tdata(21)
    );
\m_axis_tdata[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis_tdata(22),
      I1 => CounterR_reg(22),
      I2 => AXI_En,
      O => m_axis_tdata(22)
    );
\m_axis_tdata[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis_tdata(23),
      I1 => CounterR_reg(23),
      I2 => AXI_En,
      O => m_axis_tdata(23)
    );
\m_axis_tdata[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis_tdata(24),
      I1 => CounterR_reg(24),
      I2 => AXI_En,
      O => m_axis_tdata(24)
    );
\m_axis_tdata[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis_tdata(25),
      I1 => CounterR_reg(25),
      I2 => AXI_En,
      O => m_axis_tdata(25)
    );
\m_axis_tdata[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis_tdata(26),
      I1 => CounterR_reg(26),
      I2 => AXI_En,
      O => m_axis_tdata(26)
    );
\m_axis_tdata[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis_tdata(27),
      I1 => CounterR_reg(27),
      I2 => AXI_En,
      O => m_axis_tdata(27)
    );
\m_axis_tdata[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis_tdata(28),
      I1 => CounterR_reg(28),
      I2 => AXI_En,
      O => m_axis_tdata(28)
    );
\m_axis_tdata[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis_tdata(29),
      I1 => CounterR_reg(29),
      I2 => AXI_En,
      O => m_axis_tdata(29)
    );
\m_axis_tdata[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis_tdata(2),
      I1 => CounterR_reg(2),
      I2 => AXI_En,
      O => m_axis_tdata(2)
    );
\m_axis_tdata[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis_tdata(30),
      I1 => CounterR_reg(30),
      I2 => AXI_En,
      O => m_axis_tdata(30)
    );
\m_axis_tdata[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis_tdata(31),
      I1 => CounterR_reg(31),
      I2 => AXI_En,
      O => m_axis_tdata(31)
    );
\m_axis_tdata[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis_tdata(3),
      I1 => CounterR_reg(3),
      I2 => AXI_En,
      O => m_axis_tdata(3)
    );
\m_axis_tdata[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis_tdata(4),
      I1 => CounterR_reg(4),
      I2 => AXI_En,
      O => m_axis_tdata(4)
    );
\m_axis_tdata[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis_tdata(5),
      I1 => CounterR_reg(5),
      I2 => AXI_En,
      O => m_axis_tdata(5)
    );
\m_axis_tdata[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis_tdata(6),
      I1 => CounterR_reg(6),
      I2 => AXI_En,
      O => m_axis_tdata(6)
    );
\m_axis_tdata[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis_tdata(7),
      I1 => CounterR_reg(7),
      I2 => AXI_En,
      O => m_axis_tdata(7)
    );
\m_axis_tdata[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis_tdata(8),
      I1 => CounterR_reg(8),
      I2 => AXI_En,
      O => m_axis_tdata(8)
    );
\m_axis_tdata[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis_tdata(9),
      I1 => CounterR_reg(9),
      I2 => AXI_En,
      O => m_axis_tdata(9)
    );
m_axis_tlast_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8B888888"
    )
        port map (
      I0 => s_axis_tlast,
      I1 => AXI_En,
      I2 => m_axis_tlast_INST_0_i_1_n_0,
      I3 => m_axis_tlast_INST_0_i_2_n_0,
      I4 => m_axis_tlast_INST_0_i_3_n_0,
      O => m_axis_tlast
    );
m_axis_tlast_INST_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7BBDDEE7"
    )
        port map (
      I0 => packetCounter_reg(6),
      I1 => packetCounter_reg(7),
      I2 => FrameSize(6),
      I3 => m_axis_tlast_INST_0_i_4_n_0,
      I4 => FrameSize(7),
      O => m_axis_tlast_INST_0_i_1_n_0
    );
m_axis_tlast_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8002200808800220"
    )
        port map (
      I0 => m_axis_tlast_INST_0_i_5_n_0,
      I1 => FrameSize(5),
      I2 => m_axis_tlast_INST_0_i_6_n_0,
      I3 => FrameSize(4),
      I4 => packetCounter_reg(5),
      I5 => packetCounter_reg(4),
      O => m_axis_tlast_INST_0_i_2_n_0
    );
m_axis_tlast_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4002100808400210"
    )
        port map (
      I0 => packetCounter_reg(0),
      I1 => FrameSize(2),
      I2 => FrameSize(0),
      I3 => FrameSize(1),
      I4 => packetCounter_reg(2),
      I5 => packetCounter_reg(1),
      O => m_axis_tlast_INST_0_i_3_n_0
    );
m_axis_tlast_INST_0_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => FrameSize(4),
      I1 => FrameSize(2),
      I2 => FrameSize(0),
      I3 => FrameSize(1),
      I4 => FrameSize(3),
      I5 => FrameSize(5),
      O => m_axis_tlast_INST_0_i_4_n_0
    );
m_axis_tlast_INST_0_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA95556"
    )
        port map (
      I0 => FrameSize(3),
      I1 => FrameSize(1),
      I2 => FrameSize(0),
      I3 => FrameSize(2),
      I4 => packetCounter_reg(3),
      O => m_axis_tlast_INST_0_i_5_n_0
    );
m_axis_tlast_INST_0_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => FrameSize(2),
      I1 => FrameSize(0),
      I2 => FrameSize(1),
      I3 => FrameSize(3),
      O => m_axis_tlast_INST_0_i_6_n_0
    );
m_axis_tvalid_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => AXI_En,
      I2 => \^m_axis_tvalid\,
      O => m_axis_tvalid
    );
\packetCounter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => packetCounter_reg(0),
      O => \plusOp__0\(0)
    );
\packetCounter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => packetCounter_reg(0),
      I1 => packetCounter_reg(1),
      O => \plusOp__0\(1)
    );
\packetCounter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => packetCounter_reg(0),
      I1 => packetCounter_reg(1),
      I2 => packetCounter_reg(2),
      O => \plusOp__0\(2)
    );
\packetCounter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => packetCounter_reg(1),
      I1 => packetCounter_reg(0),
      I2 => packetCounter_reg(2),
      I3 => packetCounter_reg(3),
      O => \plusOp__0\(3)
    );
\packetCounter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => packetCounter_reg(2),
      I1 => packetCounter_reg(0),
      I2 => packetCounter_reg(1),
      I3 => packetCounter_reg(3),
      I4 => packetCounter_reg(4),
      O => \plusOp__0\(4)
    );
\packetCounter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => packetCounter_reg(3),
      I1 => packetCounter_reg(1),
      I2 => packetCounter_reg(0),
      I3 => packetCounter_reg(2),
      I4 => packetCounter_reg(4),
      I5 => packetCounter_reg(5),
      O => \plusOp__0\(5)
    );
\packetCounter[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \packetCounter[7]_i_4_n_0\,
      I1 => packetCounter_reg(6),
      O => \plusOp__0\(6)
    );
\packetCounter[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40000000FFFFFFFF"
    )
        port map (
      I0 => m_axis_tlast_INST_0_i_1_n_0,
      I1 => m_axis_tlast_INST_0_i_2_n_0,
      I2 => m_axis_tlast_INST_0_i_3_n_0,
      I3 => \^m_axis_tvalid\,
      I4 => m_axis_tready,
      I5 => m_axis_aresetn,
      O => \packetCounter[7]_i_1_n_0\
    );
\packetCounter[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axis_tvalid\,
      I1 => m_axis_tready,
      O => \packetCounter[7]_i_2_n_0\
    );
\packetCounter[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \packetCounter[7]_i_4_n_0\,
      I1 => packetCounter_reg(6),
      I2 => packetCounter_reg(7),
      O => \plusOp__0\(7)
    );
\packetCounter[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => packetCounter_reg(5),
      I1 => packetCounter_reg(3),
      I2 => packetCounter_reg(1),
      I3 => packetCounter_reg(0),
      I4 => packetCounter_reg(2),
      I5 => packetCounter_reg(4),
      O => \packetCounter[7]_i_4_n_0\
    );
\packetCounter_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => \packetCounter[7]_i_2_n_0\,
      D => \plusOp__0\(0),
      Q => packetCounter_reg(0),
      S => \packetCounter[7]_i_1_n_0\
    );
\packetCounter_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => \packetCounter[7]_i_2_n_0\,
      D => \plusOp__0\(1),
      Q => packetCounter_reg(1),
      S => \packetCounter[7]_i_1_n_0\
    );
\packetCounter_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => \packetCounter[7]_i_2_n_0\,
      D => \plusOp__0\(2),
      Q => packetCounter_reg(2),
      S => \packetCounter[7]_i_1_n_0\
    );
\packetCounter_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => \packetCounter[7]_i_2_n_0\,
      D => \plusOp__0\(3),
      Q => packetCounter_reg(3),
      S => \packetCounter[7]_i_1_n_0\
    );
\packetCounter_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => \packetCounter[7]_i_2_n_0\,
      D => \plusOp__0\(4),
      Q => packetCounter_reg(4),
      S => \packetCounter[7]_i_1_n_0\
    );
\packetCounter_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => \packetCounter[7]_i_2_n_0\,
      D => \plusOp__0\(5),
      Q => packetCounter_reg(5),
      S => \packetCounter[7]_i_1_n_0\
    );
\packetCounter_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => \packetCounter[7]_i_2_n_0\,
      D => \plusOp__0\(6),
      Q => packetCounter_reg(6),
      S => \packetCounter[7]_i_1_n_0\
    );
\packetCounter_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => \packetCounter[7]_i_2_n_0\,
      D => \plusOp__0\(7),
      Q => packetCounter_reg(7),
      S => \packetCounter[7]_i_1_n_0\
    );
sampleGeneratorEnr_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000001"
    )
        port map (
      I0 => sampleGeneratorEnr_i_2_n_0,
      I1 => afterResetCycleCounterR_reg(6),
      I2 => afterResetCycleCounterR_reg(7),
      I3 => afterResetCycleCounterR_reg(4),
      I4 => afterResetCycleCounterR_reg(3),
      I5 => sampleGeneratorEnr,
      O => sampleGeneratorEnr_i_1_n_0
    );
sampleGeneratorEnr_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFB"
    )
        port map (
      I0 => afterResetCycleCounterR_reg(0),
      I1 => afterResetCycleCounterR_reg(5),
      I2 => afterResetCycleCounterR_reg(2),
      I3 => afterResetCycleCounterR_reg(1),
      O => sampleGeneratorEnr_i_2_n_0
    );
sampleGeneratorEnr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => '1',
      D => sampleGeneratorEnr_i_1_n_0,
      Q => sampleGeneratorEnr,
      R => clear
    );
tValidR_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E000"
    )
        port map (
      I0 => \^m_axis_tvalid\,
      I1 => sampleGeneratorEnr,
      I2 => En,
      I3 => m_axis_aresetn,
      O => tValidR_i_1_n_0
    );
tValidR_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => '1',
      D => tValidR_i_1_n_0,
      Q => \^m_axis_tvalid\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity test_samplegen_sample_generator_0_0_sample_generator_v1_0_S_AXIS is
  port (
    s_axis_tready : out STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_aresetn : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of test_samplegen_sample_generator_0_0_sample_generator_v1_0_S_AXIS : entity is "sample_generator_v1_0_S_AXIS";
end test_samplegen_sample_generator_0_0_sample_generator_v1_0_S_AXIS;

architecture STRUCTURE of test_samplegen_sample_generator_0_0_sample_generator_v1_0_S_AXIS is
  signal mst_exec_state_i_1_n_0 : STD_LOGIC;
  signal \^s_axis_tready\ : STD_LOGIC;
  signal writes_done : STD_LOGIC;
  signal writes_done_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of mst_exec_state_i_1 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of writes_done_i_1 : label is "soft_lutpair24";
begin
  s_axis_tready <= \^s_axis_tready\;
mst_exec_state_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E00"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => \^s_axis_tready\,
      I2 => writes_done,
      I3 => s_axis_aresetn,
      O => mst_exec_state_i_1_n_0
    );
mst_exec_state_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => '1',
      D => mst_exec_state_i_1_n_0,
      Q => \^s_axis_tready\,
      R => '0'
    );
writes_done_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF2A0000"
    )
        port map (
      I0 => writes_done,
      I1 => s_axis_tvalid,
      I2 => \^s_axis_tready\,
      I3 => s_axis_tlast,
      I4 => s_axis_aresetn,
      O => writes_done_i_1_n_0
    );
writes_done_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => '1',
      D => writes_done_i_1_n_0,
      Q => writes_done,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity test_samplegen_sample_generator_0_0_sample_generator_v1_0 is
  port (
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tready : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_aresetn : in STD_LOGIC;
    FrameSize : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    AXI_En : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    En : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of test_samplegen_sample_generator_0_0_sample_generator_v1_0 : entity is "sample_generator_v1_0";
end test_samplegen_sample_generator_0_0_sample_generator_v1_0;

architecture STRUCTURE of test_samplegen_sample_generator_0_0_sample_generator_v1_0 is
begin
sample_generator_v1_0_M_AXIS_inst: entity work.test_samplegen_sample_generator_0_0_sample_generator_v1_0_M_AXIS
     port map (
      AXI_En => AXI_En,
      En => En,
      FrameSize(7 downto 0) => FrameSize(7 downto 0),
      m_axis_aclk => m_axis_aclk,
      m_axis_aresetn => m_axis_aresetn,
      m_axis_tdata(31 downto 0) => m_axis_tdata(31 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      s_axis_tdata(31 downto 0) => s_axis_tdata(31 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tvalid => s_axis_tvalid
    );
sample_generator_v1_0_S_AXIS_inst: entity work.test_samplegen_sample_generator_0_0_sample_generator_v1_0_S_AXIS
     port map (
      s_axis_aclk => s_axis_aclk,
      s_axis_aresetn => s_axis_aresetn,
      s_axis_tlast => s_axis_tlast,
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity test_samplegen_sample_generator_0_0 is
  port (
    FrameSize : in STD_LOGIC_VECTOR ( 7 downto 0 );
    En : in STD_LOGIC;
    AXI_En : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_aresetn : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    m_axis_aclk : in STD_LOGIC;
    m_axis_aresetn : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of test_samplegen_sample_generator_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of test_samplegen_sample_generator_0_0 : entity is "test_samplegen_sample_generator_0_0,sample_generator_v1_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of test_samplegen_sample_generator_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of test_samplegen_sample_generator_0_0 : entity is "sample_generator_v1_0,Vivado 2023.1";
end test_samplegen_sample_generator_0_0;

architecture STRUCTURE of test_samplegen_sample_generator_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of m_axis_aclk : signal is "xilinx.com:signal:clock:1.0 M_AXIS_CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of m_axis_aclk : signal is "XIL_INTERFACENAME M_AXIS_CLK, ASSOCIATED_BUSIF M_AXIS, ASSOCIATED_RESET m_axis_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN test_samplegen_s_axis_aclk, INSERT_VIP 0";
  attribute x_interface_info of m_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 M_AXIS_RST RST";
  attribute x_interface_parameter of m_axis_aresetn : signal is "XIL_INTERFACENAME M_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 M_AXIS TLAST";
  attribute x_interface_info of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 M_AXIS TREADY";
  attribute x_interface_info of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 M_AXIS TVALID";
  attribute x_interface_parameter of m_axis_tvalid : signal is "XIL_INTERFACENAME M_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN test_samplegen_s_axis_aclk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_axis_aclk : signal is "xilinx.com:signal:clock:1.0 S_AXIS_CLK CLK";
  attribute x_interface_parameter of s_axis_aclk : signal is "XIL_INTERFACENAME S_AXIS_CLK, ASSOCIATED_BUSIF S_AXIS, ASSOCIATED_RESET s_axis_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN test_samplegen_s_axis_aclk, INSERT_VIP 0";
  attribute x_interface_info of s_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 S_AXIS_RST RST";
  attribute x_interface_parameter of s_axis_aresetn : signal is "XIL_INTERFACENAME S_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 S_AXIS TLAST";
  attribute x_interface_info of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 S_AXIS TREADY";
  attribute x_interface_parameter of s_axis_tready : signal is "XIL_INTERFACENAME S_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN test_samplegen_s_axis_aclk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS TVALID";
  attribute x_interface_info of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute x_interface_info of m_axis_tstrb : signal is "xilinx.com:interface:axis:1.0 M_AXIS TSTRB";
  attribute x_interface_info of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS TDATA";
  attribute x_interface_info of s_axis_tstrb : signal is "xilinx.com:interface:axis:1.0 S_AXIS TSTRB";
begin
U0: entity work.test_samplegen_sample_generator_0_0_sample_generator_v1_0
     port map (
      AXI_En => AXI_En,
      En => En,
      FrameSize(7 downto 0) => FrameSize(7 downto 0),
      m_axis_aclk => m_axis_aclk,
      m_axis_aresetn => m_axis_aresetn,
      m_axis_tdata(31 downto 0) => m_axis_tdata(31 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      s_axis_aclk => s_axis_aclk,
      s_axis_aresetn => s_axis_aresetn,
      s_axis_tdata(31 downto 0) => s_axis_tdata(31 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid
    );
\m_axis_tstrb[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => s_axis_tstrb(0),
      I1 => AXI_En,
      O => m_axis_tstrb(0)
    );
\m_axis_tstrb[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => s_axis_tstrb(1),
      I1 => AXI_En,
      O => m_axis_tstrb(1)
    );
\m_axis_tstrb[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => s_axis_tstrb(2),
      I1 => AXI_En,
      O => m_axis_tstrb(2)
    );
\m_axis_tstrb[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => s_axis_tstrb(3),
      I1 => AXI_En,
      O => m_axis_tstrb(3)
    );
end STRUCTURE;
