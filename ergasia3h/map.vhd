--map
--pairnei ta 4 bits tou instruction san opcode kai to kanei 6bit microcode
library ieee;
use ieee.std_logic_1164.all;

entity map is --to entity analuei ti kanei to module input output
    port (
        IR  : in  std_logic_vector(3 downto 0); --ta bits panw apo 3-0  einai to opcode
        ADR : out std_logic_vector(5 downto 0) --pane apo 5 sto 0
    );
end entity map;

architecture rtl of map is  --rt1= register transfer level style design
begin
    ADR <= IR & "00";  -- IR[3..0]00
end architecture rtl;
