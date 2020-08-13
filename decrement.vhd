----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:42:41 11/10/2019 
-- Design Name: 
-- Module Name:    decrement - Behavioral 
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
use IEEE.NUMERIC_STD.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity decrement is
Port( 
a1 : in STD_LOGIC_VECTOR(3 downto 0);
out1:out STD_LOGIC_VECTOR(3 downto 0)
);
end decrement;

architecture Behavioral of decrement is
signal tempsum : std_logic_vector(4 downto 0);
signal atagan : std_logic_vector(3 downto 0);
begin
atagan<= "0001";
tempsum <= std_logic_vector(signed((a1(3) & a1)) - signed((atagan(3) & atagan)));
 out1<= tempsum(3 downto 0);


end Behavioral;

