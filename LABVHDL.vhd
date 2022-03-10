--Please Don't Enter Seconds More Than 59 Because It Force The Program To Finish Immediately.
library ieee;
use ieee.std_logic_1164.all;	  
entity LABVHDL is 
port (clk,start_stop :in std_logic ;
      min_in , sec_in : in std_logic_vector (5 downto 0)  ;
		min_out , sec_out : out std_logic_vector (5 downto 0);
		finish: out std_logic);
end LABVHDL ;
architecture behavioural of LABVHDL is
signal c : integer range 0 to 3;
begin 
		process (clk,start_stop)
	   variable min , sec : std_logic_vector ( 5 downto 0) ;
		begin 
			  if (clk 'event and clk ='1' and start_stop ='1' ) then 
			  if(c=0 ) then
					min:= min_in ;
					sec:=sec_in ;
					end if ;
				  if  ((sec > "111011") or (min>"111011")) then
						min:= "000000" ;
						sec:="000000" ;
						finish <='1';
				  elsif (sec="000000") then 
					  if (c<2) then
						c<=c+1;
						end if;
					  if (min="000000") then
							finish <= '1';
						else
							if min(0)='1' then min(0):='0' ;
							elsif min(1)='1' then min(0):='1';min(1):='0' ;
							elsif min(2)='1' then min(0):='1';min(1):='1';min(2):='0' ;
							elsif min(3)='1' then min(0):='1';min(1):='1';min(2):='1';min(3):='0' ;
							elsif min(4)='1' then min(0):='1';min(1):='1';min(2):='1';min(3):='1';min(4):='0' ;
							elsif min(5)='1' then min(0):='1';min(1):='1';min(2):='1';min(3):='1';min(4):='1';min(5):='0' ;
							end if;
							sec:="111011";
							finish<='0';
							end if;
				 elsif (sec>"000000") then
					if (c<2) then
						c<=c+1;
						end if;
					if sec(0)='1' then sec(0):='0' ;
					elsif sec(1)='1' then sec(0):='1';sec(1):='0' ;
					elsif sec(2)='1' then sec(0):='1';sec(1):='1';sec(2):='0' ;
					elsif sec(3)='1' then sec(0):='1';sec(1):='1';sec(2):='1';sec(3):='0' ;
					elsif sec(4)='1' then sec(0):='1';sec(1):='1';sec(2):='1';sec(3):='1';sec(4):='0' ;
					elsif sec(5)='1' then sec(0):='1';sec(1):='1';sec(2):='1';sec(3):='1';sec(4):='1';sec(5):='0' ;
					end if;
					finish<='0';
				  end if ;
			  end if ;
				min_out<= min ;
			  sec_out<= sec;
		end process;
end behavioural;
