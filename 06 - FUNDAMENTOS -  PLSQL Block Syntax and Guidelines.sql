-- 06.Sintaxe e Diretrizes de um Bloco PL/SQL
/*
-- Diretrizes de um bloco PL/SQL
   > PL/SQL é uma extensão do SQL, as regras de sintaxe gerais que se aplicam ao
   SQL também são aplicáveis a linguagem PL/SQL;
   > Unidades léxicas (identificadores ou literais) podem ser separadas por um
    ou mais espaços.

-- Sintaxe e diretrizes de um Bloco PL/SQL
   > Você não pode inserir espaços em unidades léxicas (com exeção de strings literais
   e comentários);
   > Comandos pode se extender por várias linhas;
   > Palavras chaves não podem ser dividadas em várias linhas.
   
-- Comentando o código
   > Utilize hífens(-) se o comentário for de uma única linha após o término do 
   comando (;) ou se for um comentário de somente uma linha;
   > Inicia-se o comentário com o símbolo (/ *) e termina o comentário com o símbolo
   (* /) se o comentário se extender por mais de uma linha
*/
SET SERVEROUTPUT ON
DECLARE
 vNumero1 NUMBER(13,2); -- Declaração de variável para o Primeiro Número
 vNumero2 NUMBER(13,2); -- Declaração de variável para o Segundo Número
 vMedia   NUMBER(13,2); -- Declaração de variável para receber a médica calculada
BEGIN
 /* Cálculo do valor da média entre dois números
 Autor: Vicente T Freitas
 Data: 20/12/2021 
*/
 vNumero1 := 8000;
 vNumero2 := 4000;
 vMedia := (vNumero1 + vNumero2) / 2; -- Cálculo da média dos dois primeiros números
 DBMS_OUTPUT.PUT_LINE('vNumero1 = ' || vNumero1); -- Impressão do primeiro número
 DBMS_OUTPUT.PUT_LINE('vNumero2 = ' || vNumero2); -- Impressão do segundo número
 DBMS_OUTPUT.PUT_LINE('vMedia = ' || vMedia); -- Impressão da média cálculada
END;