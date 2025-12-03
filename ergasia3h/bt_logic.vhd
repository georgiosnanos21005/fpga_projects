library ieee;
use ieee.std_logic_1164.all;

entity bt_logic is
  port(
    BT      : in  std_logic;
    cond_in : in  std_logic;
    S       : out std_logic_vector(1 downto 0)
  );
end entity;

architecture rtl of bt_logic is
begin
  process(BT, cond_in)
  begin
    if BT = '0' then
      S <= "00";                -- sequential (+1)
    else
      if cond_in = '1' then
        S <= "01";              -- branch (MAP)
      else
        S <= "00";              -- sequential
      end if;
    end if;
  end process;
end architecture;
