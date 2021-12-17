-- 2.Definindo Identificadores – Variáveis
/*
-- Utilizando variáveis
   - Armazenamento tempor?rio de dados
   - Manipulação dos valores armazenados
   - Reutilização
   - Facilidade de manutenção
   
-- Identificadores
   - Indetificadores são utilizados para nomear itens e unidades de programas PL/SQL,
   que incluem constantes, variáveis, exceções, cursores, procedures, funções e packages
   - Nomes de identificadores podem conter até 30 caracteres, mas devem iniciar com um 
   caractere alfabético;
   - Nomes de identificadores não podem utilizar palavras reservadas como identificadores
   a menos que elas seja colocadas entre aspas duplas (por exemplo, "SELECT")
   - Indetificadores são palavras
   - Eles podem ser palavras reservadas, identificadores predefinidos, identifivadores
   delimitados por aspas duplas (quoted identifiers), variáveis definidas pelo usuário,
   subrotinas ou tipos definidos pelo usuário;
   
-- Quoted Identifier
   - Oracle 19c permite que você utilize aspas duplas como delimitadores de identificadores
   (quoted identifiers) para permiter a reutilização de símbolos;
   - Quaoted Identifiers podem incluir quaisquer caracteres imprimveis, incluindo espaços 
   - Entretanto você não pode incluir aspas duplas dentro de identificadores
   - O tamanho máximo de um quoted identifier é de 30 caracteres
   EXEMPLO:
    DECLARE 
     "VNumero" NUMBER := 1;
   
-- Variáveis definidas pelo usuário
   - Você pode criar identificadores quando você define um componente de programa;
   - Variáveis definidas pelo usuário devem possuir menos de 30 caracteres e iniciar
   com uma letra; eles podem incluir: $, # ou _
   - Elas não podem conter sinais de pontuação, espaços ou hifens
   
-- Literais
   - Um literal é um valor explícito definido por string, número ou booleano;
   - Um String literal também pode representar um literal de data
   
-- String Literal
   - São definidos por colocar um conjunto de caracteres até o tamanho máximo do tipo de
   dado, geralmente utilizamos VARCHAR2 para um conjunto de caracteres entre aspas simples;
   - Os valores para string literal são case sensitives
   
   EXEMPLO - Literal String:
    BEGIN
     vtexto := 'String de caracteres';
   
   EXEMPLO - Literal String de Datas:
    BEGIN
     vdata1 := '28/01/20';
     vdata2 := '28/01/2020';
   
   EXEMPLO - Literal Númerico:
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
   
-- Declarando Variáveis
   - Declare e inicialize variáveis dentro da seção DECLARE;
   - Declarações de variáveis ou constantes alocam espaço de armazenamento para
   um valor, especificam seu tipo de dado e nome de forma qu você possa referencia-la
   - Declarações também podem atribuir um valor inicial e impor a constraint NOT NULL

-- Utilizando Variáveis - Atribuindo novos valores
   - Atribua novos valores a variáveis dentro da seção BEGIN;
   - O valor existente da variável é substituido por um novo
   - Você deve declarar uma variável antes de referencia-la em outros comandos
*/ 

-- Declarando uma variável do tipo NUMBER
SET SERVEROUTPUT ON
DECLARE
 vNumero NUMBER(11,2) := 1200.50;
BEGIN
 DBMS_OUTPUT.PUT_LINE('Número = ' || vNumero);
END;

-- Declarando variável do tipo CHAR
DECLARE
 vCaractererTamFixo CHAR(2) := 'RS';
 vCaracterTamVariavel VARCHAR2(100) := 'Porto Alegre, RS';
BEGIN
 DBMS_OUTPUT.PUT_LINE('String Caracteres Tam Fixo = ' || vCaractererTamFixo);
 DBMS_OUTPUT.PUT_LINE('String Caracteres Tam Variável = ' || vcaractertamvariavel);
END;

-- Declarando variáveis do tipo DATE
DECLARE
 vData1 DATE := '29/04/20';
 vData2 DATE := '29/04/2020';
BEGIN
 DBMS_OUTPUT.PUT_LINE('Data1 = ' || vData1);
 DBMS_OUTPUT.PUT_LINE('Data2 = ' || vData2);
END;