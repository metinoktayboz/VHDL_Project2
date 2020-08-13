----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:42:28 11/10/2019 
-- Design Name: 
-- Module Name:    increment - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity increment is
Port( a1 : in STD_LOGIC_VECTOR(3 downto 0);
carry: out STD_LOGIC;
out1 : out STD_LOGIC_VECTOR(3 downto 0));
end increment;

architecture Behavioral of increment is
signal tempsum: std_logic_vector(4 downto 0);
signal atakan : std_logic_vector(3 downto 0);
begin
atakan <= "0001";
tempsum <= std_logic_vector(signed((a1(3) & a1)) + signed((atakan(3) & atakan)));
 out1<= tempsum(3 downto 0);
 carry <= tempsum(4);		


end Behavioral;

