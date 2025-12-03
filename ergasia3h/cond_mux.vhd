library ieee;
use ieee.std_logic_1164.all;

entity cond_mux is
  port(
    Z        : in  std_logic;
    cond_sel : in  std_logic_vector(1 downto 0);
    cond_out : out std_logic
  );
end entity;

architecture rtl of cond_mux is
begin
  with cond_sel select
    cond_out <= '1'     when "00",
                Z       when "01",
                not Z   when "10",
                '0'     when others;
end architecture;
