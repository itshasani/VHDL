library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity sample_generator_v1_0_M_AXIS is
	generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line

		-- Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.
		C_M_AXIS_TDATA_WIDTH	: integer	:= 32;
		-- Start count is the number of clock cycles the master will wait before initiating/issuing any transaction.
		C_M_START_COUNT	: integer	:= 32
	);
	port (
		-- Users to add ports here
		FrameSize : in std_logic_vector(7 downto 0);
		En : in std_logic;
		-- User ports ends
		-- Do not modify the ports beyond this line

		-- Global ports
		M_AXIS_ACLK	: in std_logic;
		-- 
		M_AXIS_ARESETN	: in std_logic;
		-- Master Stream Ports. TVALID indicates that the master is driving a valid transfer, A transfer takes place when both TVALID and TREADY are asserted. 
		M_AXIS_TVALID	: out std_logic;
		-- TDATA is the primary payload that is used to provide the data that is passing across the interface from the master.
		M_AXIS_TDATA	: out std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
		-- TSTRB is the byte qualifier that indicates whether the content of the associated byte of TDATA is processed as a data byte or a position byte.
		M_AXIS_TSTRB	: out std_logic_vector((C_M_AXIS_TDATA_WIDTH/8)-1 downto 0);
		-- TLAST indicates the boundary of a packet.
		M_AXIS_TLAST	: out std_logic;
		-- TREADY indicates that the slave can accept a transfer in the current cycle.
		M_AXIS_TREADY	: in std_logic
	);
end sample_generator_v1_0_M_AXIS;

architecture implementation of sample_generator_v1_0_M_AXIS is



	signal CounterR : std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0) := (others => '0');
	signal afterResetCycleCounterR : std_logic_vector(7 downto 0) := (others => '0');
	signal sampleGeneratorEnr : std_logic := '0';
	signal tValidR : std_logic := '0';
	signal packetCounter : std_logic_vector(7 downto 0) := (others => '0');
begin
	-- Sample Generator 
	process(M_AXIS_ACLK)
		begin 
			if rising_edge(M_AXIS_ACLK) then
				if M_AXIS_ARESETN = '0' then 
					CounterR <= (others => '0');
				else
					if (M_AXIS_TVALID = '1' and M_AXIS_TREADY = '1') then 
						CounterR <= CounterR + 1;
					end if;
				end if;
			end if;
		end process;
	-- to Count the number of clock cycles after reset 
process(M_AXIS_ACLK)
		begin 
			if rising_edge(M_AXIS_ACLK) then 
				if M_AXIS_ARESETN = '0' then 
					sampleGeneratorEnr <= '0';
					afterResetCycleCounterR <= (others => '0');
				else 
					afterResetCycleCounterR <= afterResetCycleCounterR + 1;
					if afterResetCycleCounterR = C_M_START_COUNT then 
						sampleGeneratorEnr <= '1';
					end if;
				end if;
			end if;
		end process;
	-- Tvalid circuit
process(M_AXIS_ACLK)
		begin 
			if rising_edge(M_AXIS_ACLK) then 
				if M_AXIS_ARESETN = '0' then 
					tValidR <= '0';
				else 
					if En = '0' then 
						tValidR <= '0';
					else 
						if sampleGeneratorEnr = '1' then 
							tValidR <= '1';
						end if;
					end if;
				end if;
			end if;	
		end process;
M_AXIS_TDATA <= CounterR;
M_AXIS_TSTRB <= (others => '1'); 
-- M_AXIS TLAST
process(M_AXIS_ACLK)
		begin 
			if rising_edge(M_AXIS_ACLK) then 
				if M_AXIS_ARESETN = '0' then 
					packetCounter <= x"ff";
				else 
					if M_AXIS_TVALID = '1' and M_AXIS_TREADY = '0' then 
						if packetCounter = (FrameSize - 1) then 
							packetCounter <= x"ff";
						else
						packetCounter <= packetCounter + 1;
						end if;
					end if;
				end if;
			end if;
		end process;
M_AXIS_TLAST <= '1' when (packetCounter = (FrameSize - 1)) else
	'0';
end implementation;
