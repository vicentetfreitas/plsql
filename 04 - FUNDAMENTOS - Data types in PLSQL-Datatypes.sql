-- 04.Tipos de Dados no PL/SQL - Datatypes
/*
-- Tipos de Dados no PL/SQL - Datatypes
   > Um tipo de dado escalar armazena um único valor e não possui componentes
   internos;
   > Tipos de dados escalares podem ser classificados em quatro categorias: 
   númerico, caractere, data e booleano.
   > Tipos de dados caracteres possuem subtipos.
*/

/*
-- Tipo NUMBER
   > Suporta números;
   > São definidos especificando NUMBER(p,s);
   > p: número de digitos (precisão);
   > s: número de decimais(escala);
   OBS: O ponto decima não é armazenado internamente
*/

SET SERVEROUTPUT ON
DECLARE
 vValor1 NUMBER(11,2) := 14.5;-- 9 digitos inteiros e 2 digitos décimais
 vValor2 NUMBER(11)   := 24;
 vNumero NUMBER(11,2) := 1200.50;
BEGIN
 DBMS_OUTPUT.PUT_LINE('vvarlor1 = ' || vValor1);
 DBMS_OUTPUT.PUT_LINE('vvalor2 = '  || vValor2);
 DBMS_OUTPUT.PUT_LINE('vnumero = '  || vNumero);
END;

/*
-- Tipo CHAR
   > É um tipo de dado base para string de tamanho fixo;
   > O tamanho máximo para um tipo de dado CHAR no PL/SQL é 32767 bytes;
   > O tamanho default é 1 byte
   OBS: O tamanho máximo de um tipo de dado CHAR no SQL é 2.000 bytes
*/
DECLARE
 vEstado CHAR(2) NOT NULL   := 'RS';
 vCaracterTamFixo CHAR(100) := 'Texto de tamanho fixo de até 32767 bytes';
BEGIN
 DBMS_OUTPUT.PUT_LINE('vEstado = ' || vEstado);
 DBMS_OUTPUT.PUT_LINE('vCaracterTamFixo = ' || vCaracterTamFixo);
END;

/*
-- Tipo VARCHAR2
   > Tipo de dado base para strings de tamanho variável
   > Tamanho máximo de um VARCHAR2 é de 32767 bytes
   OBS: O tamanho máximo de uma coluna VARCHAR2  no SQL é de 4000 bytes
*/
DECLARE
 vCidade VARCHAR2(40) NOT NULL      := 'Porto Alegre';
 vCaracterTamVariavel VARCHAR2(100) := 'Texto de tamaho de até 32767 bytes'; 
BEGIN
 DBMS_OUTPUT.PUT_LINE('vCidade = ' || vCidade);
 DBMS_OUTPUT.PUT_LINE('vCaracterTamVariavel = ' || vCaracterTamVariavel);
END;

/*
-- Tipo BOOLEAN
   > Possuí três valores possíveis: TRUE, FALSE e NULL
*/
DECLARE 
 vBooleano BOOLEAN NOT NULL := TRUE;
BEGIN
 IF vBooleano  = TRUE
 THEN
  DBMS_OUTPUT.PUT_LINE('vBooleano = ' || 'TRUE');
 ELSE
  DBMS_OUTPUT.PUT_LINE('vBooleano = ' || 'FALSE OR NULL');
 END IF;
END;

/*
-- Tipo LONG e LONG RAW
   > LONG armazéna um string de caractereres. LONG RAW armazena binários
   > LONG possui um tamanho máximo de 32760 bytes no PL/SQL
   > LONG RAW possui um tamanho máximo de até 32760 bytes no PL/SQL
   OBS: Tamanho máximo de um LONG no SQL: 2G - 1. Tamanho máximo de um LONG RAW
   no SQl é 2G.
*/
DECLARE
 vLong LONG := 'Texto tamanho variável de até 32760 bytes';
BEGIN
 DBMS_OUTPUT.PUT_LINE('vLong = ' || vLong);
END;

/*
-- Tipo ROWID
   > Mapeia a pseudocoluna ROWID, que é o endereço lógico de uma linha de uma 
   tabela;
   > O tipo ROWID é um strin de caracteres
*/
DECLARE
 vRowid ROWID;
BEGIN 
  SELECT rowid
  INTO   vRowid
  FROM   employees
  WHERE  first_name = 'Steven' AND last_name = 'King';
  DBMS_OUTPUT.PUT_LINE('Rowid = ' || vRowid );
END;

/*
-- Tipo DATE
   > Tipo da dado base para datas. O intervalo válido é a partir de 1 de Janeiro
   de 4712 AC até 31 de Dezembro de 9999 DC
*/
DECLARE
 vData1 DATE := SYSDATE;
 vData2 DATE := '28/01/20';
BEGIN
 DBMS_OUTPUT.PUT_LINE('Data Atual: vData1 = ' || vData1 );
 DBMS_OUTPUT.PUT_LINE('vData2 = ' || vData2);
END;

/*
-- Tipo TIMESTAMP
   > O subtipo TIMESTAMP extende o tipo de dado DATE base oferecendo um tempo com
   tamanho máximo de 9 dígitos de segundos após o decimal.
*/
DECLARE
 vTimestamp TIMESTAMP := SYSTIMESTAMP;
BEGIN
 DBMS_OUTPUT.PUT_LINE('vTimestamp = ' || vTimestamp);
END;

/*
-- TIMESTAMP WITH TIME ZONE
   > O subtipo TIMESTAMP extende o tipo de dado DATE base oferecendo um tempo com
   tamanho máximo de 9 dígitos de segundos após o decimal incluindo UTC
*/
DECLARE 
 vTimestamptz TIMESTAMP WITH TIME ZONE := SYSTIMESTAMP;
BEGIN
 DBMS_OUTPUT.PUT_LINE('vTimestamptz = ' || vTimestamptz);
END;

/*
-- Tipo NCHAR e NVARCHAR2
   > Caracteres e strings Unicode existem para suportar globalização utilizando
   conjuntos de caracteres (character sets) universais;
   > AL16UTF16 ou UTF8 são completos de caracteres universais fornecidos pelo
   banco de dados ORACLE;
   > AL16UTF16 armazena todos os caracteres em 2 bytes físicos
   > UTF8 armazena todos os caracteres em 3 bytes físicos.
   > O tipo de dado NCHAR é um Unicode equivalente ao tipo de dado CHAR
   > O tipo de dado NVARCHAR2 é um Unicode equivalente ao tipo de dado VARCHAR2
*/
DECLARE
 vEstado                       NCHAR(100) := 'RS';
 vNome                         NVARCHAR2(100) := 'Utilizando conjunto de caracteres Universal';
 vCaracterTamFixoUniversal     NVARCHAR2(100) := 'Texto de tamanho fixo Universal de até 32760 bytes'; 
 vCaracterTamVariavelUniversal NVARCHAR2(100) := 'Texto de tamanho variavel Universal de até 32760 bytes';
BEGIN
 DBMS_OUTPUT.PUT_LINE('vEstado = ' || vEstado);
 DBMS_OUTPUT.PUT_LINE('vNome = ' || vNome);
 DBMS_OUTPUT.PUT_LINE('vCaracterTamFixoUniversal = ' || vCaracterTamFixoUniversal);
 DBMS_OUTPUT.PUT_LINE('vCaracterTamVariavelUniversal = ' || vCaracterTamVariavelUniversal);
END;

/*
-- Tipo BINARY_INTEGER
   > Númerico sem decimais
   > Armazena números inteiros na faixa entre: - 2.147.483.648 até 2.147.483.647
   com 32 bits ou 4 Bytes
   > Cálcuos mais eficientes com números ineiros que um tipo de dado NUMBER porque
   consome menos espaço em memória
*/
DECLARE
 vVar1          BINARY_INTEGER := 14;
 vVar2          BINARY_INTEGER := 24;
 vNumeroInteiro BINARY_INTEGER := 1200;
BEGIN
 DBMS_OUTPUT.PUT_LINE('vVar1 = ' || vVar1);
 DBMS_OUTPUT.PUT_LINE('vVar2 = ' || vVar2);
 DBMS_OUTPUT.PUT_LINE('vNumeroInteiro = ' || vNumeroInteiro);
END;

/*
-- Tipo BINARY_DOUBLE e BINARY_FLOAT
   > BINARY_FLOAT: precisão simples de 32 bits
   > BINARY_DOUBLE: precisão simples de 64 bits
*/
DECLARE
 vVar1          BINARY_DOUBLE := 14;
 vVar2          BINARY_FLOAT := 24;
 vNumeroFloat   BINARY_FLOAT := 15000000;
 vNumeroDouble  BINARY_DOUBLE := 25000000;
BEGIN
 DBMS_OUTPUT.PUT_LINE('vVar1 = ' || vVar1);
 DBMS_OUTPUT.PUT_LINE('vVar2 = ' || vVar2);
 DBMS_OUTPUT.PUT_LINE('vNumeroFloat = ' || vNumeroFloat);
 DBMS_OUTPUT.PUT_LINE('vNumeroDouble = ' || vNumeroDouble);
END;

/*
-- Regras de Nomeclatura
   > Dois objetos podem possuir o mesmo nome, desde que sejam definidos em blocos
   diferentes
   > Não utilizar mesmo nome(identificador) para uma variável que o nome de colunas
   de tabelas utilizadas no bloco para evitar ambiquidade
*/

/*
-- Atribuindo valores para variáveis
   > Para atribuir valor para uma variável, você escreve um comando de atribuição
   PL/SQL
   > Você deve explicitamente nomear a variável para receber o novo valor à esquerda
   do operador de atribuição (:=)
*/
DECLARE
 vdatabase VARCHAR2(40);
BEGIN
 vdatabase := 'Oracle 19c';
 DBMS_OUTPUT.PUT_LINE('Valor da variável vdatabase = ' || vdatabase);
END;

/*
-- Declarando variaveis utilizando o %TYPE:
   > Ao invés de condificar o tipo de dado e a precisão de uma variável, você pode
   utilizar o atributo %TYPE para declarar uma variável de acordo com uma coluna
   do banco de dados ou outra variável
   > O atributo %TYPE é frequentemente utilizado quando o valor armazenado em
   uma variável é derivado de uma coluna de uma tabela do banco de dados
  
 vfirst_name employees.first_name%TYPE;
 vlast_name  employees.last_name%TYPE;
*/
