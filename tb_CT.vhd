LIBRARY ieee; USE ieee.std_logic_1164.ALL;
ENTITY tb_CT IS
END tb_CT;
ARCHITECTURE behavior OF tb_CT IS 
COMPONENT CT PORT(KEY1,RESET: IN std_logic; LED1,LED2,LED3: OUT std_logic); END COMPONENT;
   signal KEY1,RESET: std_logic := '0'; --Inputs
   signal LED1,LED2,LED3: std_logic;    --Outputs
BEGIN
   uut: CT PORT MAP (KEY1,RESET,LED1,LED2,LED3);
   tb_proc: process
   begin
	  KEY1<='1'; RESET<='1'; WAIT FOR 50ns; 
	  KEY1<='0'; RESET<='0'; WAIT FOR 50ns; 
	  KEY1<='0'; WAIT FOR 50ns; KEY1<='1'; WAIT FOR 50ns;
	  KEY1<='0'; WAIT FOR 50ns; KEY1<='1'; WAIT FOR 50ns;
	  KEY1<='0'; WAIT FOR 50ns; KEY1<='1'; WAIT FOR 50ns;
	  KEY1<='0'; WAIT FOR 50ns; KEY1<='1'; WAIT FOR 50ns;
	  KEY1<='0'; WAIT FOR 50ns; KEY1<='1'; WAIT FOR 50ns;
	  KEY1<='0'; WAIT FOR 50ns; KEY1<='1'; WAIT FOR 50ns;
	  KEY1<='0'; WAIT FOR 50ns; KEY1<='1'; WAIT FOR 50ns;
	  KEY1<='0'; WAIT FOR 50ns; KEY1<='1'; WAIT FOR 50ns;
	  WAIT;
   end process;
END;