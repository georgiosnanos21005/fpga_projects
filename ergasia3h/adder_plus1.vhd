library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity adder_plus1 is
    generic (N : integer := 6);
    port(
        a : in  std_logic_vector(N-1 downto 0);
        y : out std_logic_vector(N-1 downto 0)
    );
end entity;

architecture rtl of adder_plus1 is
begin
    y <= std_logic_vector(unsigned(a) + 1);
end architecture;
