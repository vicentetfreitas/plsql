-- 06.Sintaxe e Diretrizes de um Bloco PL/SQL
/*
-- Diretrizes de um bloco PL/SQL
   > PL/SQL � uma extens�o do SQL, as regras de sintaxe gerais que se aplicam ao
   SQL tamb�m s�o aplic�veis a linguagem PL/SQL;
   > Unidades l�xicas (identificadores ou literais) podem ser separadas por um
    ou mais espa�os.

-- Sintaxe e diretrizes de um Bloco PL/SQL
   > Voc� n�o pode inserir espa�os em unidades l�xicas (com exe��o de strings literais
   e coment�rios);
   > Comandos pode se extender por v�rias linhas;
   > Palavras chaves n�o podem ser dividadas em v�rias linhas.
   
-- Comentando o c�digo
   > Utilize h�fens(-) se o coment�rio for de uma �nica linha ap�s o t�rmino do 
   comando (;) ou se for um coment�rio de somente uma linha;
   > Inicia-se o coment�rio com o s�mbolo (/ *) e termina o coment�rio com o s�mbolo
   (* /) se o coment�rio se extender por mais de uma linha
*/
SET SERVEROUTPUT ON
DECLARE
 vNumero1 NUMBER(13,2); -- Declara��o de vari�vel para o Primeiro N�mero
 vNumero2 NUMBER(13,2); -- Declara��o de vari�vel para o Segundo N�mero
 vMedia   NUMBER(13,2); -- Declara��o de vari�vel para receber a m�dica calculada
BEGIN
 /* C�lculo do valor da m�dia entre dois n�meros
 Autor: Vicente T Freitas
 Data: 20/12/2021 
*/
 vNumero1 := 8000;
 vNumero2 := 4000;
 vMedia := (vNumero1 + vNumero2) / 2; -- C�lculo da m�dia dos dois primeiros n�meros
 DBMS_OUTPUT.PUT_LINE('vNumero1 = ' || vNumero1); -- Impress�o do primeiro n�mero
 DBMS_OUTPUT.PUT_LINE('vNumero2 = ' || vNumero2); -- Impress�o do segundo n�mero
 DBMS_OUTPUT.PUT_LINE('vMedia = ' || vMedia); -- Impress�o da m�dia c�lculada
END;