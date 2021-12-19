-- 05.Vari�vel BIND
/*
-- Vari�vel BIND
   > � uma vari�vel que � declarada externa o bloco, e ent�o � utilizada para passar
   valores em tempo de execu��o, para um ou mais blocos PL/SQL que podem utiliza-l�
   como qualquer outra vari�vel
   > Voc� pode referenciar vari�veis BIND declaradas em um ambiente externo ao 
   bloco dentro do bloco PL/SQL 
   
-- Utilizando vari�veis BIND no SQL*PLUS e SQL Developer
   > No ambiente do Oracle SQL*Plus ou do Oracle SQL Deveploer, para declarar uma
   vari�vel BIND, voc� utiliza o comando VARIABLE
   
-- Referenciando vari�veis BIND
   > Para refer�ncia vari�veis BIND, voc� deve prefixar a refer�ncia com o 
   caracterer (:) para distinguir de vari�veis declaradas no bloco PL/SQL
*/

-- Utilizando vari�veis BIND
SET SERVEROUTPUT ON
VARIABLE gmedia NUMBER
DECLARE
 vNumero1 NUMBER(11,2) := 2000;
 vNumero2 NUMBER(11,2) := 5000;
BEGIN
 :gmedia :=(vNumero1 + vNumero2) /2;
 DBMS_OUTPUT.PUT_LINE('M�dia = ' || TO_CHAR(:gmedia));
EXCEPTION
 WHEN OTHERS
 THEN
 DBMS_OUTPUT.PUT_LINE('Erro Oracle: ' || SQLCODE || SQLERRM);
END;