-- 05.Variável BIND
/*
-- Variável BIND
   > É uma variável que é declarada externa o bloco, e então é utilizada para passar
   valores em tempo de execução, para um ou mais blocos PL/SQL que podem utiliza-lá
   como qualquer outra variável
   > Você pode referenciar variáveis BIND declaradas em um ambiente externo ao 
   bloco dentro do bloco PL/SQL 
   
-- Utilizando variáveis BIND no SQL*PLUS e SQL Developer
   > No ambiente do Oracle SQL*Plus ou do Oracle SQL Deveploer, para declarar uma
   variável BIND, você utiliza o comando VARIABLE
   
-- Referenciando variáveis BIND
   > Para referência variáveis BIND, você deve prefixar a referência com o 
   caracterer (:) para distinguir de variáveis declaradas no bloco PL/SQL
*/

-- Utilizando variáveis BIND
SET SERVEROUTPUT ON
VARIABLE gmedia NUMBER
DECLARE
 vNumero1 NUMBER(11,2) := 2000;
 vNumero2 NUMBER(11,2) := 5000;
BEGIN
 :gmedia :=(vNumero1 + vNumero2) /2;
 DBMS_OUTPUT.PUT_LINE('Média = ' || TO_CHAR(:gmedia));
EXCEPTION
 WHEN OTHERS
 THEN
 DBMS_OUTPUT.PUT_LINE('Erro Oracle: ' || SQLCODE || SQLERRM);
END;