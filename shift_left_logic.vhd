----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:35:54 11/11/2019 
-- Design Name: 
-- Module Name:    shift_left_logic - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity shift_left_logic is
Port(
a : in std_logic_vector(3 downto 0);
b : out std_logic_vector(3 downto 0));
end shift_left_logic;

architecture Behavioral of shift_left_logic is
signal d : unsigned (3 downto 0 );

begin
d<= unsigned(a);
b<= std_logic_vector(d sll 1);


end Behavioral;

