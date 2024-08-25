----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/25/2024 01:38:09 AM
-- Design Name: 
-- Module Name: SampleGen_TB - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.math_real.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SampleGen_TB is
--  Port ( );
end SampleGen_TB;
    
architecture Behavioral of SampleGen_TB is
    component test_samplegen_wrapper is 
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
    
    end component;
    -- input signals 
    signal AXI_En : std_logic;
    signal En : std_logic;
    signal FrameSize : STD_LOGIC_VECTOR ( 7 downto 0 );
    signal M_AXIS_tready : std_logic;
    signal S_AXIS_tdata : STD_LOGIC_VECTOR ( 31 downto 0 );
    signal S_AXIS_tlast : STD_LOGIC;
    signal S_AXIS_tstrb : STD_LOGIC_VECTOR ( 3 downto 0 );
    signal CLK   : STD_LOGIC;
    signal RESETN : STD_LOGIC;
    signal S_AXIS_tvalid : STD_LOGIC;

    -- output signal
    signal M_AXIS_tdata : STD_LOGIC_VECTOR ( 31 downto 0 );
    signal M_AXIS_tstrb : STD_LOGIC_VECTOR ( 3 downto 0 );
    signal M_AXIS_tvalid : STD_LOGIC;
    signal S_AXIS_tready : STD_LOGIC;
    signal M_AXIS_tlast : STD_LOGIC;
    
    constant CLK_PR : time := 10ns;
    constant timeScale : time := 1ns;
    
begin
    UUT0: test_samplegen_wrapper port map (
        AXI_En => AXI_En,
        En => En,
        FrameSize => FrameSize,
        M_AXIS_tready => M_AXIS_tready,
        S_AXIS_tdata => S_AXIS_tdata,
        S_AXIS_tlast => S_AXIS_tlast,
        S_AXIS_tstrb => S_AXIS_tstrb,
        s_axis_aclk => CLK,
        s_axis_aresetn => RESETN,
        S_AXIS_tvalid => S_AXIS_tvalid,
        M_AXIS_tdata => M_AXIS_tdata,
        M_AXIS_tstrb => M_AXIS_tstrb,
        M_AXIS_tvalid => M_AXIS_tvalid,
        M_AXIS_tlast => M_AXIS_tlast,
        S_AXIS_tready => S_AXIS_tready
    );
    process
        begin 
            AXI_En <= '0';
            FrameSize <= x"10";
            S_AXIS_tdata <= (others => '0');
            S_AXIS_tstrb <= (others => '0');
            S_AXIS_tvalid <= '0';
            wait;
        end process;
    CLK_PRR: process 
                begin 
                    CLK <= '0';
                    wait for CLK_PR/2;
                    CLK <= '1';
                    wait for CLK_PR/2;
                end process;
    reset_PR: process 
                begin
                    RESETN <= '0';
                    wait for 100*timeScale;
                    RESETN <= '1';
                    wait;
                end process;
    EN_PR: process 
                begin
                    EN <= '1';
                    wait for 1000*timeScale;
                    EN <= '0';
                    wait for 100*timeScale;
                    En <= '1';
                    wait;
                end process;  
     Tready_PR: process 
                begin
                    M_AXIS_tready <= '0';
                    wait for 200*timeScale;
                    M_AXIS_tready <= '1';
                    wait for 2000*timeScale;
                    M_AXIS_tready <= '0';
                    wait for 200*timeScale;
                    M_AXIS_tready <= '1';
                    
                    end process;                       
end Behavioral;
