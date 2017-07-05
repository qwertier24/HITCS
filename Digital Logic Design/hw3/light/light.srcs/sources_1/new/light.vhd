--------------------------------------------
-- Module Name: light
--------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.numeric_std.all;

library UNISIM;
use UNISIM.VComponents.all;

Entity light Is
port (
		btn : in STD_LOGIC_VECTOR(4 downto 0);
		led : out STD_LOGIC_VECTOR(15 downto 0);
		clk : in STD_LOGIC;
		seg : out STD_LOGIC_VECTOR(6 downto 0);
		AN : out STD_LOGIC_VECTOR(7 downto 0)
	);
end light;

Architecture behavior of light Is

Signal led_int : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
signal sseg_i : STD_LOGIC_VECTOR(2 downto 0) := (others=>'0');

signal clk4hz : std_logic := '0';
signal clk4hz_n: STD_LOGIC_VECTOR(23 downto 0) := "100110001001011010000000";
signal clk4hz_i : STD_LOGIC_VECTOR(23 downto 0) := (others => '0');

signal clk1khz : std_logic := '0';
signal clk1khz_n : std_logic_vector(16 downto 0) := "11000011010100000";
signal clk1khz_i : std_logic_vector(16 downto 0) := "11000011010100000";

procedure go_straight (signal va : inout STD_LOGIC_VECTOR(15 downto 0)) is
begin
    va <= (others => '0');
end;

procedure turn_left (signal va : inout STD_LOGIC_VECTOR(15 downto 0);
                     signal an : out STD_LOGIC_VECTOR(7 downto 0);
                     signal seg : out STD_LOGIC_VECTOR(6 downto 0);
                     signal clk4hz : in STD_LOGIC;
                     signal sseg_i : in STD_LOGIC_VECTOR(2 downto 0)) is
begin
    va(12 downto 0) <= (others => '0');
    case sseg_i(2 downto 0) is
        when "000" =>
            an <= "01111111" ;
            seg <= "1000111";
        when "001" =>
            an <= "10111111";
            seg <= "0000110";
        when "010" =>
            an <= "11011111";
            seg <= "0001110";
        when "011" =>
            an <= "11101111";
            seg <= "1111000";
        when others =>
            an <= "11111111";
    end case;
    
    if rising_edge(clk4hz) then
        case va(15 downto 13) is
            when "100" =>
                va(15 downto 13) <= "001";
            when "010" =>
                va(15 downto 13) <= "100";
            when "001" =>
                va(15 downto 13) <= "010";
            when others =>
                va(15 downto 13) <= "100";
        end case;
    end if;
end;

procedure turn_right (signal va : inout STD_LOGIC_VECTOR(15 downto 0);
                     signal an : out STD_LOGIC_VECTOR(7 downto 0);
                     signal seg : out STD_LOGIC_VECTOR(6 downto 0);
                     signal clk4hz : in STD_LOGIC;
                     signal sseg_i : in STD_LOGIC_VECTOR(2 downto 0)) is
begin
    va(15 downto 3) <= (others => '0');
    case sseg_i(2 downto 0) is
        when "000" =>
            an <= "11110111" ;
            seg <= "0001000";
        when "001" =>
            an <= "11111011";
            seg <= "1111001";
        when "010" =>
            an <= "11111101";
            seg <= "1000010";
        when "011" =>
            an <= "11111110";
            seg <= "0001001";
        when others =>
            an <= "11111111";
    end case;
    if rising_edge(clk4hz) then
        case va(2 downto 0) is
            when "001" =>
                va(2 downto 0) <= "100";
            when "010" =>
                va(2 downto 0) <= "001";
            when "100" =>
                va(2 downto 0) <= "010";
            when others =>
                va(2 downto 0) <= "001";
        end case;
    end if;
end;

procedure go_back (signal va : inout STD_LOGIC_VECTOR(15 downto 0);
                   signal an : out STD_LOGIC_VECTOR(7 downto 0);
                   signal seg : out STD_LOGIC_VECTOR(6 downto 0);
                   signal new_clk : in STD_LOGIC;
                   signal sseg_i : in STD_LOGIC_VECTOR(2 downto 0)) is
begin
    case sseg_i(2 downto 0) is
        when "000" =>
            an <= "01111111" ;
            seg <= "0010010";
        when "001" =>
            an <= "10111111";
            seg <= "1111000";
        when "010" =>
            an <= "11011111";
            seg <= "1000000";
        when "011" =>
            an <= "11101111";
            seg <= "0001100";
        when others =>
            an <= "11111111";
    end case;
    if rising_edge(new_clk) then
        va(12 downto 3) <= (others => '0');
        case va(15 downto 13) is
            when "111" =>
                va(15 downto 13) <= "000";
            when "000" =>
                va(15 downto 13) <= "111";
            when others =>
                va(15 downto 13) <= "000";
         end case;
         case va(2 downto 0) is
            when "111" =>
                va(2 downto 0) <= "000";
            when "000" =>
                va(2 downto 0) <= "111";
            when others =>
                va(2 downto 0) <= "000";
          end case;
      end if;
end;

procedure output_error(signal an : out STD_LOGIC_VECTOR(7 downto 0);
                       signal seg : out STD_LOGIC_VECTOR(6 downto 0);
                       signal sseg_i : in STD_LOGIC_VECTOR(2 downto 0)) is
begin
    case sseg_i(2 downto 0) is
       when "000" =>
           an <= "01111111" ;
           seg <= "0000110";
       when "001" =>
           an <= "10111111";
           seg <= "0001000";
       when "010" =>
           an <= "11011111";
           seg <= "0001000";
       when "011" =>
           an <= "11101111";
           seg <= "1000000";
       when "100" =>
           an <= "11110111";
           seg <= "0001000";
       when others =>
           an <= "11111111";
           
   end case;
end;

begin
        led <= led_int;
        
        process(clk, clk4hz) begin
        if rising_edge(clk) then
            clk4hz_i <= clk4hz_i + 1;
            if (clk4hz_i >= clk4hz_n) then
                clk4hz <= not clk4hz;
                clk4hz_i <= (others => '0');
            end if;
            
            clk1khz_i <= clk1khz_i + 1;
            if (clk1khz_i >= clk1khz_n) then
                clk1khz <= not clk1khz;
                clk1khz_i <= (others => '0');
            end if;
        end if;
        end process;
        
        process(clk1khz) begin
        if rising_edge(clk1khz) then
            sseg_i <= sseg_i + 1;
            if sseg_i = "101" then
                sseg_i <= "000";
            end if;
        end if;
        end process;
        
        
        process (btn) begin
            if btn = "00010" then
                AN <= "11111111";
                go_straight(led_int);
            elsif btn = "00100" or btn = "00110" then 
                turn_left(led_int, AN, seg, clk4hz, sseg_i);
            elsif btn = "01000" or btn = "01010" then
                turn_right(led_int, AN, seg, clk4hz, sseg_i);
            elsif btn = "10000" then
                go_back(led_int, AN, seg, clk4hz, sseg_i);
            elsif btn = "00000" then
                AN <= "11111111";
                led_int <= (others => '1');
            else 
                output_error(AN, seg, sseg_i);
            end if;
        end process;
            
end behavior;
