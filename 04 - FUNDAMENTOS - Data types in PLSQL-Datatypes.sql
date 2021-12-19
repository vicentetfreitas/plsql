-- 04.Tipos de Dados no PL/SQL - Datatypes
/*
-- Tipos de Dados no PL/SQL - Datatypes
   > Um tipo de dado escalar armazena um �nico valor e n�o possui componentes
   internos;
   > Tipos de dados escalares podem ser classificados em quatro categorias: 
   n�merico, caractere, data e booleano.
   > Tipos de dados caracteres possuem subtipos.
*/

/*
-- Tipo NUMBER
   > Suporta n�meros;
   > S�o definidos especificando NUMBER(p,s);
   > p: n�mero de digitos (precis�o);
   > s: n�mero de decimais(escala);
   OBS: O ponto decima n�o � armazenado internamente
*/

SET SERVEROUTPUT ON
DECLARE
 vValor1 NUMBER(11,2) := 14.5;-- 9 digitos inteiros e 2 digitos d�cimais
 vValor2 NUMBER(11)   := 24;
 vNumero NUMBER(11,2) := 1200.50;
BEGIN
 DBMS_OUTPUT.PUT_LINE('vvarlor1 = ' || vValor1);
 DBMS_OUTPUT.PUT_LINE('vvalor2 = '  || vValor2);
 DBMS_OUTPUT.PUT_LINE('vnumero = '  || vNumero);
END;

/*
-- Tipo CHAR
   > � um tipo de dado base para string de tamanho fixo;
   > O tamanho m�ximo para um tipo de dado CHAR no PL/SQL � 32767 bytes;
   > O tamanho default � 1 byte
   OBS: O tamanho m�ximo de um tipo de dado CHAR no SQL � 2.000 bytes
*/
DECLARE
 vEstado CHAR(2) NOT NULL   := 'RS';
 vCaracterTamFixo CHAR(100) := 'Texto de tamanho fixo de at� 32767 bytes';
BEGIN
 DBMS_OUTPUT.PUT_LINE('vEstado = ' || vEstado);
 DBMS_OUTPUT.PUT_LINE('vCaracterTamFixo = ' || vCaracterTamFixo);
END;

/*
-- Tipo VARCHAR2
   > Tipo de dado base para strings de tamanho vari�vel
   > Tamanho m�ximo de um VARCHAR2 � de 32767 bytes
   OBS: O tamanho m�ximo de uma coluna VARCHAR2  no SQL � de 4000 bytes
*/
DECLARE
 vCidade VARCHAR2(40) NOT NULL      := 'Porto Alegre';
 vCaracterTamVariavel VARCHAR2(100) := 'Texto de tamaho de at� 32767 bytes'; 
BEGIN
 DBMS_OUTPUT.PUT_LINE('vCidade = ' || vCidade);
 DBMS_OUTPUT.PUT_LINE('vCaracterTamVariavel = ' || vCaracterTamVariavel);
END;

/*
-- Tipo BOOLEAN
   > Possu� tr�s valores poss�veis: TRUE, FALSE e NULL
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
   > LONG armaz�na um string de caractereres. LONG RAW armazena bin�rios
   > LONG possui um tamanho m�ximo de 32760 bytes no PL/SQL
   > LONG RAW possui um tamanho m�ximo de at� 32760 bytes no PL/SQL
   OBS: Tamanho m�ximo de um LONG no SQL: 2G - 1. Tamanho m�ximo de um LONG RAW
   no SQl � 2G.
*/
DECLARE
 vLong LONG := 'Texto tamanho vari�vel de at� 32760 bytes';
BEGIN
 DBMS_OUTPUT.PUT_LINE('vLong = ' || vLong);
END;

/*
-- Tipo ROWID
   > Mapeia a pseudocoluna ROWID, que � o endere�o l�gico de uma linha de uma 
   tabela;
   > O tipo ROWID � um strin de caracteres
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
   > Tipo da dado base para datas. O intervalo v�lido � a partir de 1 de Janeiro
   de 4712 AC at� 31 de Dezembro de 9999 DC
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
   tamanho m�ximo de 9 d�gitos de segundos ap�s o decimal.
*/
DECLARE
 vTimestamp TIMESTAMP := SYSTIMESTAMP;
BEGIN
 DBMS_OUTPUT.PUT_LINE('vTimestamp = ' || vTimestamp);
END;

/*
-- TIMESTAMP WITH TIME ZONE
   > O subtipo TIMESTAMP extende o tipo de dado DATE base oferecendo um tempo com
   tamanho m�ximo de 9 d�gitos de segundos ap�s o decimal incluindo UTC
*/
DECLARE 
 vTimestamptz TIMESTAMP WITH TIME ZONE := SYSTIMESTAMP;
BEGIN
 DBMS_OUTPUT.PUT_LINE('vTimestamptz = ' || vTimestamptz);
END;

/*
-- Tipo NCHAR e NVARCHAR2
   > Caracteres e strings Unicode existem para suportar globaliza��o utilizando
   conjuntos de caracteres (character sets) universais;
   > AL16UTF16 ou UTF8 s�o completos de caracteres universais fornecidos pelo
   banco de dados ORACLE;
   > AL16UTF16 armazena todos os caracteres em 2 bytes f�sicos
   > UTF8 armazena todos os caracteres em 3 bytes f�sicos.
   > O tipo de dado NCHAR � um Unicode equivalente ao tipo de dado CHAR
   > O tipo de dado NVARCHAR2 � um Unicode equivalente ao tipo de dado VARCHAR2
*/
DECLARE
 vEstado                       NCHAR(100) := 'RS';
 vNome                         NVARCHAR2(100) := 'Utilizando conjunto de caracteres Universal';
 vCaracterTamFixoUniversal     NVARCHAR2(100) := 'Texto de tamanho fixo Universal de at� 32760 bytes'; 
 vCaracterTamVariavelUniversal NVARCHAR2(100) := 'Texto de tamanho variavel Universal de at� 32760 bytes';
BEGIN
 DBMS_OUTPUT.PUT_LINE('vEstado = ' || vEstado);
 DBMS_OUTPUT.PUT_LINE('vNome = ' || vNome);
 DBMS_OUTPUT.PUT_LINE('vCaracterTamFixoUniversal = ' || vCaracterTamFixoUniversal);
 DBMS_OUTPUT.PUT_LINE('vCaracterTamVariavelUniversal = ' || vCaracterTamVariavelUniversal);
END;

/*
-- Tipo BINARY_INTEGER
   > N�merico sem decimais
   > Armazena n�meros inteiros na faixa entre: - 2.147.483.648 at� 2.147.483.647
   com 32 bits ou 4 Bytes
   > C�lcuos mais eficientes com n�meros ineiros que um tipo de dado NUMBER porque
   consome menos espa�o em mem�ria
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
   > BINARY_FLOAT: precis�o simples de 32 bits
   > BINARY_DOUBLE: precis�o simples de 64 bits
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
   > N�o utilizar mesmo nome(identificador) para uma vari�vel que o nome de colunas
   de tabelas utilizadas no bloco para evitar ambiquidade
*/

/*
-- Atribuindo valores para vari�veis
   > Para atribuir valor para uma vari�vel, voc� escreve um comando de atribui��o
   PL/SQL
   > Voc� deve explicitamente nomear a vari�vel para receber o novo valor � esquerda
   do operador de atribui��o (:=)
*/
DECLARE
 vdatabase VARCHAR2(40);
BEGIN
 vdatabase := 'Oracle 19c';
 DBMS_OUTPUT.PUT_LINE('Valor da vari�vel vdatabase = ' || vdatabase);
END;

/*
-- Declarando variaveis utilizando o %TYPE:
   > Ao inv�s de condificar o tipo de dado e a precis�o de uma vari�vel, voc� pode
   utilizar o atributo %TYPE para declarar uma vari�vel de acordo com uma coluna
   do banco de dados ou outra vari�vel
   > O atributo %TYPE � frequentemente utilizado quando o valor armazenado em
   uma vari�vel � derivado de uma coluna de uma tabela do banco de dados
  
 vfirst_name employees.first_name%TYPE;
 vlast_name  employees.last_name%TYPE;
*/
