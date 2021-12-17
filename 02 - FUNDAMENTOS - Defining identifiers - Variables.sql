-- 2.Definindo Identificadores � Vari�veis
/*
-- Utilizando vari�veis
   - Armazenamento tempor?rio de dados
   - Manipula��o dos valores armazenados
   - Reutiliza��o
   - Facilidade de manuten��o
   
-- Identificadores
   - Indetificadores s�o utilizados para nomear itens e unidades de programas PL/SQL,
   que incluem constantes, vari�veis, exce��es, cursores, procedures, fun��es e packages
   - Nomes de identificadores podem conter at� 30 caracteres, mas devem iniciar com um 
   caractere alfab�tico;
   - Nomes de identificadores n�o podem utilizar palavras reservadas como identificadores
   a menos que elas seja colocadas entre aspas duplas (por exemplo, "SELECT")
   - Indetificadores s�o palavras
   - Eles podem ser palavras reservadas, identificadores predefinidos, identifivadores
   delimitados por aspas duplas (quoted identifiers), vari�veis definidas pelo usu�rio,
   subrotinas ou tipos definidos pelo usu�rio;
   
-- Quoted Identifier
   - Oracle 19c permite que voc� utilize aspas duplas como delimitadores de identificadores
   (quoted identifiers) para permiter a reutiliza��o de s�mbolos;
   - Quaoted Identifiers podem incluir quaisquer caracteres imprimveis, incluindo espa�os 
   - Entretanto voc� n�o pode incluir aspas duplas dentro de identificadores
   - O tamanho m�ximo de um quoted identifier � de 30 caracteres
   EXEMPLO:
    DECLARE 
     "VNumero" NUMBER := 1;
   
-- Vari�veis definidas pelo usu�rio
   - Voc� pode criar identificadores quando voc� define um componente de programa;
   - Vari�veis definidas pelo usu�rio devem possuir menos de 30 caracteres e iniciar
   com uma letra; eles podem incluir: $, # ou _
   - Elas n�o podem conter sinais de pontua��o, espa�os ou hifens
   
-- Literais
   - Um literal � um valor expl�cito definido por string, n�mero ou booleano;
   - Um String literal tamb�m pode representar um literal de data
   
-- String Literal
   - S�o definidos por colocar um conjunto de caracteres at� o tamanho m�ximo do tipo de
   dado, geralmente utilizamos VARCHAR2 para um conjunto de caracteres entre aspas simples;
   - Os valores para string literal s�o case sensitives
   
   EXEMPLO - Literal String:
    BEGIN
     vtexto := 'String de caracteres';
   
   EXEMPLO - Literal String de Datas:
    BEGIN
     vdata1 := '28/01/20';
     vdata2 := '28/01/2020';
   
   EXEMPLO - Literal N�merico:
    BEGIN
     vvalor  := 5000;
     vvalor2 := 2638E8;
     vdouble := 2.0d;
     vfloat  := 2.0f;

   EXEMPLO - Boleano:
    BEGIN
     vboleano := TRUE;
     vboleano := FALSE;
     vboleano := NULL;
   
-- Declarando Vari�veis
   - Declare e inicialize vari�veis dentro da se��o DECLARE;
   - Declara��es de vari�veis ou constantes alocam espa�o de armazenamento para
   um valor, especificam seu tipo de dado e nome de forma qu voc� possa referencia-la
   - Declara��es tamb�m podem atribuir um valor inicial e impor a constraint NOT NULL

-- Utilizando Vari�veis - Atribuindo novos valores
   - Atribua novos valores a vari�veis dentro da se��o BEGIN;
   - O valor existente da vari�vel � substituido por um novo
   - Voc� deve declarar uma vari�vel antes de referencia-la em outros comandos
*/ 

-- Declarando uma vari�vel do tipo NUMBER
SET SERVEROUTPUT ON
DECLARE
 vNumero NUMBER(11,2) := 1200.50;
BEGIN
 DBMS_OUTPUT.PUT_LINE('N�mero = ' || vNumero);
END;

-- Declarando vari�vel do tipo CHAR
DECLARE
 vCaractererTamFixo CHAR(2) := 'RS';
 vCaracterTamVariavel VARCHAR2(100) := 'Porto Alegre, RS';
BEGIN
 DBMS_OUTPUT.PUT_LINE('String Caracteres Tam Fixo = ' || vCaractererTamFixo);
 DBMS_OUTPUT.PUT_LINE('String Caracteres Tam Vari�vel = ' || vcaractertamvariavel);
END;

-- Declarando vari�veis do tipo DATE
DECLARE
 vData1 DATE := '29/04/20';
 vData2 DATE := '29/04/2020';
BEGIN
 DBMS_OUTPUT.PUT_LINE('Data1 = ' || vData1);
 DBMS_OUTPUT.PUT_LINE('Data2 = ' || vData2);
END;