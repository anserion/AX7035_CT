--Copyright 2025 Andrey S. Ionisyan (anserion@gmail.com)
--Licensed under the Apache License, Version 2.0 (the "License");
--you may not use this file except in compliance with the License.
--You may obtain a copy of the License at
--    http://www.apache.org/licenses/LICENSE-2.0
--Unless required by applicable law or agreed to in writing, software
--distributed under the License is distributed on an "AS IS" BASIS,
--WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
--See the License for the specific language governing permissions and
--limitations under the License.
------------------------------------------------------------------

library IEEE; 
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity CT is
    Port (KEY1,RESET: in STD_LOGIC;
          LED1,LED2,LED3: out STD_LOGIC);
end CT;

architecture Behavioral of CT is
signal CNT: std_logic_vector(2 downto 0);
begin
cnt_proc: process(KEY1)
begin
  if rising_edge(KEY1) then
    if RESET='1' 
      then CNT<=(others=>'0');
      else CNT<=CNT+1; 
    end if;
  end if;
end process;
LED1<=CNT(0); LED2<=CNT(1); LED3<=CNT(2);
end Behavioral;
