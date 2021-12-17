-- 03.Definindo Identificadores Constantes

-- Declarando Constantes

-- Declarando Constante do tipo NUMBER
SET SERVEROUTPUT ON
DECLARE 
 vPi CONSTANT NUMBER(38,15) := 3.141592653581;
BEGIN
 DBMS_OUTPUT.PUT_LINE('PI = ' || vPI);
END;

-- Declaranco Constante tipo CHAR e VARCHAR2
DECLARE
 vCaracterTamFixo CONSTANT CHAR(2):= 'RS';
 vCaracterTamVariavel CONSTANT VARCHAR2(100) := 'Porto Alegre, RS';
BEGIN
 DBMS_OUTPUT.PUT_LINE('String Caracteres Tam Fixo = ' || vcaractertamfixo);
 DBMS_OUTPUT.PUT_LINE('String Caracteres Tam Variável' || vcaractertamvariavel);
END;