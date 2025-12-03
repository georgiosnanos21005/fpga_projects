library ieee;
use ieee.std_logic_1164.all;

package mseqlib is

    component map
        port(
            IR  : in  std_logic_vector(3 downto 0);
            ADR : out std_logic_vector(5 downto 0)
        );
    end component;

    component mux4
        generic (N : integer := 6);
        port(
            d0, d1, d2, d3 : in std_logic_vector(N-1 downto 0);
            sel           : in std_logic_vector(1 downto 0);
            y             : out std_logic_vector(N-1 downto 0)
        );
    end component;

    component regnbit
        generic (n : integer := 6);
        port(
            din  : in  std_logic_vector(n-1 downto 0);
            clk, rst, ld : in std_logic;
            inc  : in std_logic;
            dout : out std_logic_vector(n-1 downto 0)
        );
    end component;

    component cond_mux
        port(
            Z        : in  std_logic;
            cond_sel : in  std_logic_vector(1 downto 0);
            cond_out : out std_logic
        );
    end component;

    component adder_plus1
        generic (N : integer := 6);
        port(
            a : in  std_logic_vector(N-1 downto 0);
            y : out std_logic_vector(N-1 downto 0)
        );
    end component;

    component bt_logic
        port(
            BT      : in  std_logic;
            cond_in : in  std_logic;
            S       : out std_logic_vector(1 downto 0)
        );
    end component;

end package;

package body mseqlib is
end package body;
