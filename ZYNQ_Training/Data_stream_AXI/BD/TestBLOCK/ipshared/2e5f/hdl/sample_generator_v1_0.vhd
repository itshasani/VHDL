library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sample_generator_v1_0 is
	generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line


		-- Parameters of Axi Slave Bus Interface S_AXIS
		C_S_AXIS_TDATA_WIDTH	: integer	:= 32;

		-- Parameters of Axi Master Bus Interface M_AXIS
		C_M_AXIS_TDATA_WIDTH	: integer	:= 32;
		C_M_AXIS_START_COUNT	: integer	:= 32
	);
	port (
		-- Users to add ports here
		FrameSize : in std_logic_vector(7 downto 0);
		En : in std_logic;
		AXI_En : in std_logic;
		-- User ports ends
		-- Do not modify the ports beyond this line


		-- Ports of Axi Slave Bus Interface S_AXIS
		s_axis_aclk	: in std_logic;
		s_axis_aresetn	: in std_logic;
		s_axis_tready	: out std_logic;
		s_axis_tdata	: in std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 downto 0);
		s_axis_tstrb	: in std_logic_vector((C_S_AXIS_TDATA_WIDTH/8)-1 downto 0);
		s_axis_tlast	: in std_logic;
		s_axis_tvalid	: in std_logic;

		-- Ports of Axi Master Bus Interface M_AXIS
		m_axis_aclk	: in std_logic;
		m_axis_aresetn	: in std_logic;
		m_axis_tvalid	: out std_logic;
		m_axis_tdata	: out std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
		m_axis_tstrb	: out std_logic_vector((C_M_AXIS_TDATA_WIDTH/8)-1 downto 0);
		m_axis_tlast	: out std_logic;
		m_axis_tready	: in std_logic
	);
end sample_generator_v1_0;


architecture arch_imp of sample_generator_v1_0 is

	-- component declaration
	component sample_generator_v1_0_S_AXIS is
		generic (
		C_S_AXIS_TDATA_WIDTH	: integer	:= 32
		);
		port (
		S_AXIS_ACLK	: in std_logic;
		S_AXIS_ARESETN	: in std_logic;
		S_AXIS_TREADY	: out std_logic;
		S_AXIS_TDATA	: in std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 downto 0);
		S_AXIS_TSTRB	: in std_logic_vector((C_S_AXIS_TDATA_WIDTH/8)-1 downto 0);
		S_AXIS_TLAST	: in std_logic;
		S_AXIS_TVALID	: in std_logic
		);
	end component sample_generator_v1_0_S_AXIS;

	component sample_generator_v1_0_M_AXIS is
		generic (
		C_M_AXIS_TDATA_WIDTH	: integer	:= 32;
		C_M_START_COUNT	: integer	:= 32
		);
		port (
	    -- Users to add ports here
		FrameSize : in std_logic_vector(7 downto 0);
		En : in std_logic;
		M_AXIS_ACLK	: in std_logic;
		M_AXIS_ARESETN	: in std_logic;
		M_AXIS_TVALID	: out std_logic;
		M_AXIS_TDATA	: out std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
		M_AXIS_TSTRB	: out std_logic_vector((C_M_AXIS_TDATA_WIDTH/8)-1 downto 0);
		M_AXIS_TLAST	: out std_logic;
		M_AXIS_TREADY	: in std_logic
		);
	end component sample_generator_v1_0_M_AXIS;

	signal  m_axis_tdataw	:  std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
	signal m_axis_tstrbw	:  std_logic_vector((C_M_AXIS_TDATA_WIDTH/8)-1 downto 0);
	signal m_axis_tlastw	:  std_logic;
	signal m_axis_tvalidw	:  std_logic;

begin

-- Instantiation of Axi Bus Interface S_AXIS
 sample_generator_v1_0_S_AXIS_inst : sample_generator_v1_0_S_AXIS
	generic map (
		C_S_AXIS_TDATA_WIDTH	=> C_S_AXIS_TDATA_WIDTH
	)
	port map (
		S_AXIS_ACLK	=> s_axis_aclk,
		S_AXIS_ARESETN	=> s_axis_aresetn,
		S_AXIS_TREADY	=> s_axis_tready,
		S_AXIS_TDATA	=> s_axis_tdata,
		S_AXIS_TSTRB	=> s_axis_tstrb,
		S_AXIS_TLAST	=> s_axis_tlast,
		S_AXIS_TVALID	=> s_axis_tvalid
	);

-- Instantiation of Axi Bus Interface M_AXIS
sample_generator_v1_0_M_AXIS_inst : sample_generator_v1_0_M_AXIS
	generic map (
		C_M_AXIS_TDATA_WIDTH	=> C_M_AXIS_TDATA_WIDTH,
		C_M_START_COUNT	=> C_M_AXIS_START_COUNT
	)
	port map (
		FrameSize => FrameSize,
		En => En,
		M_AXIS_ACLK	=> m_axis_aclk,
		M_AXIS_ARESETN	=> m_axis_aresetn,
		M_AXIS_TVALID	=> m_axis_tvalidw,
		M_AXIS_TDATA	=> m_axis_tdataw,
		M_AXIS_TSTRB	=> m_axis_tstrbw,
		M_AXIS_TLAST	=> m_axis_tlastw,
		M_AXIS_TREADY	=> m_axis_tready
	);

	-- Add user logic here
	-- Adding MUX HERE
	m_axis_tdata <= s_axis_tdata when AXI_En = '1' else
		m_axis_tdataw;
	m_axis_tstrb <= s_axis_tstrb when AXI_En = '1' else
		m_axis_tstrbw;
	m_axis_tlast <= s_axis_tlast when AXI_En = '1' else
		m_axis_tlastw;
	m_axis_tvalid <= s_axis_tvalid when AXI_En = '1' else
		m_axis_tvalidw;
	s_axis_tready <= m_axis_tready;

	-- User logic ends

end arch_imp;
