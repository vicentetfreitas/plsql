-- 01.Bloco An�nimo
/*
--  Estrutura do bloco an�nimo:
    > DECLARE: (OPCIONAL) - cont�m a declara��o de vari�veis, constantes, cursores e
    exce��es definidas pelo usu�rio;
    > BEGIN: (OBRIGAT�RIO) - cont�m os comandos SQL e PL/SQL que ser�o executados no
    bloco;
    > EXCEPTION: (OPCIONAL) - cont�m as a��es a serem executadas para tratamento das 
    exe��es queo forem disparadas pelos comandos na se��o BEGIN
    > END; Fim do Bloco

-- Utilizando ao Package DBMS_OUTPUT:
    > Mostra o texto na tela
    > A package DBMS_OUTPUT no c�digo do programa depura mensagens de aviso e 
    conte�dos de vari�veis
    > Depois de depurado o c�digo, retire os comandos e disponibilize o programa
    para outros usu�rios
    
*/
-- Habilitando o Buffer de sa�da da Package DBMS_OUTPUT
-- SET � um comando do SQLPLUS que deve ser executado fora do bloc PL/SQL
SET SERVEROUTPUT ON

-- Imprimindo um texto utilizando a Package DBMS_OUTPUT
-- DBMS_OUTPUT.PUT_LINE('Texto');
DECLARE
    vNumero1 NUMBER(11,2) := 500;
    vNumero2 NUMBER(11,2) := 400;
    vMedia NUMBER(11,2);
BEGIN
    vMedia := (vNumero1 + vNumero2) / 2;
    DBMS_OUTPUT.PUT_LINE('M�dia = ' || vmedia);
END;
