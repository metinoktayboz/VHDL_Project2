----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:40:45 11/10/2019 
-- Design Name: 
-- Module Name:    four_bit_adder - Behavioral 
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

entity four_bit_adder is
Port( 
in1 : in STD_LOGIC_VECTOR(3 downto 0);
in2 : in STD_LOGIC_VECTOR(3 downto 0);
sout: out STD_LOGIC_VECTOR(3 downto 0);
cout: out STD_LOGIC);
end four_bit_adder;

architecture Behavioral of four_bit_adder is
signal tempsum : std_logic_vector(4 downto 0);
begin
tempsum <= std_logic_vector(signed((in1(3) & in1)) + signed((in2(3) & in2)));
 sout<= tempsum(3 downto 0);
 cout <= tempsum(4);



end Behavioral;

