/* Diferença entre software de programa e software de aplicativo

* Sistema do software consiste em programas de baixo nível desenvolvidos para interagir com o hardware
EX: Sistemas operacionais, compiladores.

* Software de aplicativo inclui programas de processamento de texto, banco de dados, jogos, e-mail e gráficos

 */

/* SELECT BÁSICO */

 SELECT *
 FROM <table name>;

 SELECT * 
 FROM EMPLOYEES;

/* INSTRUÇÃO SELECT COM UMA CONDIÇÃO */

SELECT <column name 1, column name 2, etc>
FROM <table name>
WHERE <condition>

SELECT first_name, last_name, job_id
FROM EMPLOYEES
WHERE job_id = 'SA_REP';

CORRIGINDO ERROS

AO INCLUIR COMANDOS SQL, É IMPORTANTE USAR A GRAFIA CORRETA, OU SERÁ EXIBIDA UMA MENSAGEM DE ERRO:

EX: SELCT *
FROM employees;

RESULTARIA NA MENSAGEM DE ERRO:

'ORA-00900: INVALID SQL STATEMENT'

TAMBÉM É IMPORTANTE USAR OS NOME E GRAFIA CORRETAS PARA COLUNAS E TABELAS

EX: SELECT *
FROM EMPLOYEE 

RESULTARIA NA MENSAGEM DE ERRO:

'ORA-00942: table or view does not exist'

EX: COLUNA DIGITADA INCORRETAMENTE

SELECT NAME
FROM EMPLOYEES;

RESULTARIA NA SEGUINTE MENSAGEM DE ERRO:

'ORA-00904: "NAME": invalid identifier'

