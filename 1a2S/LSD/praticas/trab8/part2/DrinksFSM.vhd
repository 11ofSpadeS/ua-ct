LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY DrinksFSM IS
    PORT (
        clock : IN STD_LOGIC;
        reset : IN STD_LOGIC := '0';
        C : IN STD_LOGIC := '0';
        V : IN STD_LOGIC := '0';
        Abrir : OUT STD_LOGIC
    );
END DrinksFSM;

ARCHITECTURE BEHAVIOR OF DrinksFSM IS
    TYPE type_fstate IS (E0 , E20 , E40 , E50 , E60 , E7080 , E90Plus);
    SIGNAL fstate : type_fstate;
    SIGNAL reg_fstate : type_fstate;
BEGIN
    PROCESS (clock,reg_fstate)
    BEGIN
        IF (clock='1' AND clock'event) THEN
            fstate <= reg_fstate;
        END IF;
    END PROCESS;

    PROCESS (fstate,reset,C,V)
    BEGIN
        IF (reset='1') THEN
            reg_fstate <= E0;
            Abrir <= '0';
        ELSE
            Abrir <= '0';
            CASE fstate IS
					WHEN E0 =>
						IF (((V = '1') AND (C = '0'))) THEN
							reg_fstate <= E20;
						ELSIF ((C = '1')) THEN
							reg_fstate <= E50;
						ELSIF (((V = '0') AND (C = '0'))) THEN
							reg_fstate <= E0;
						ELSE
							reg_fstate <= E0;
						END IF;

						Abrir <= '0';

					WHEN E20 =>
						IF (((V = '1') AND (C = '0'))) THEN
							reg_fstate <= E40;
						ELSIF ((C = '1')) THEN
							reg_fstate <= E7080;
						ELSIF (((V = '0') AND (C = '0'))) THEN
							reg_fstate <= E20;
						ELSE
							reg_fstate <= E20;
						END IF;

						Abrir <= '0';
								  
					WHEN E40 =>
						IF (((V = '1') AND (C = '0'))) THEN
							reg_fstate <= E60;
						ELSIF ((C = '1')) THEN
							reg_fstate <= E90Plus;
						ELSIF (((V = '0') AND (C = '0'))) THEN
							reg_fstate <= E40;
						ELSE
							reg_fstate <= E40;
						END IF;

						Abrir <= '0';
											  
					WHEN E50 =>
						IF (((V = '1') and (C = '0'))) THEN
							reg_fstate <= E7080;
						ELSIF (C = '1') THEN
							reg_fstate <= E90Plus;
						elsif (((V = '0') and (C = '0'))) then
							reg_fstate <= E50;
						ELSE
							reg_fstate <= E50;
						END IF;

						Abrir <= '0';
								  
					WHEN E60 =>
						IF (((V = '1') and (C = '0'))) THEN
							reg_fstate <= E7080;
						ELSIF (C = '1') THEN
							reg_fstate <= E90Plus;
						elsif (((V = '0') and (C = '0'))) then
							reg_fstate <= E60;
						ELSE
							reg_fstate <= E60;
						END IF;

						Abrir <= '0';
								  
					when E7080 =>
						if (((V = '1') or (C = '1'))) then
							reg_fstate <= E90Plus;
						elsif (((V = '0') and (C= '0' ))) then
							reg_fstate <= E7080;
						else
							reg_fstate <= E7080;
						end if;

						Abrir <= '0';
												
											  
					WHEN E90Plus =>
					  reg_fstate <= E0;

					  Abrir <= '1';
					WHEN OTHERS => 
					  Abrir <= 'X';
					  report "Reach undefined state";
					END CASE;
        END IF;
    END PROCESS;
END BEHAVIOR;
