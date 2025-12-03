library ieee;
use ieee.std_logic_1164.all;

entity regnbit is
  generic (n : integer := 6);
  port(
    din  : in  std_logic_vector(n-1 downto 0);
    clk, rst, ld : in std_logic;
    inc  : in std_logic;
    dout : out std_logic_vector(n-1 downto 0)
  );
end entity;

architecture rtl of regnbit is
begin
  process(clk, rst)
  begin
    if rst = '1' then
      dout <= (others => '0');
    elsif rising_edge(clk) then
      if ld = '1' then
        dout <= din;
      elsif inc = '1' then
        dout <= std_logic_vector(unsigned(dout) + 1);
      end if;
    end if;
  end process;
end architecture;
