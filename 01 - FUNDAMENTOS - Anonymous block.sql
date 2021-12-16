-- 01.Bloco Anônimo
/*
--  Estrutura do bloco anônimo:
    > DECLARE: (OPCIONAL) - contém a declaração de variáveis, constantes, cursores e
    exceções definidas pelo usuário;
    > BEGIN: (OBRIGATÓRIO) - contém os comandos SQL e PL/SQL que serão executados no
    bloco;
    > EXCEPTION: (OPCIONAL) - contém as ações a serem executadas para tratamento das 
    exeções queo forem disparadas pelos comandos na seção BEGIN
    > END; Fim do Bloco

-- Utilizando ao Package DBMS_OUTPUT:
    > Mostra o texto na tela
    > A package DBMS_OUTPUT no código do programa depura mensagens de aviso e 
    conteúdos de variáveis
    > Depois de depurado o código, retire os comandos e disponibilize o programa
    para outros usuários
    
*/
-- Habilitando o Buffer de saída da Package DBMS_OUTPUT
-- SET é um comando do SQLPLUS que deve ser executado fora do bloc PL/SQL
SET SERVEROUTPUT ON

-- Imprimindo um texto utilizando a Package DBMS_OUTPUT
-- DBMS_OUTPUT.PUT_LINE('Texto');
DECLARE
    vNumero1 NUMBER(11,2) := 500;
    vNumero2 NUMBER(11,2) := 400;
    vMedia NUMBER(11,2);
BEGIN
    vMedia := (vNumero1 + vNumero2) / 2;
    DBMS_OUTPUT.PUT_LINE('Média = ' || vmedia);
END;
