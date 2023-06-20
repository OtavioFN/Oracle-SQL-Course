/*
Ordena as linhas em ordem crescente (a ordem padrão); A-Z:

R: ORDER BY [column_name] ASC

Ordena as linhas em ordem decrescente: Z-A:

R: ORDER BY [column_name] DESC

Organizar de acordo com a classe, tipo ou tamanho:

R:  ORDER BY

1. No exemplo a seguir, designe o alias “Number” à coluna employee_id. Complete a instrução SQL
para ordenar o conjunto de resultados pelo alias da coluna.

SELECT employee_id, first_name, last_name
FROM employees;

R:
SELECT employee_id "Number", first_name, last_name
FROM employees
ORDER BY "Number";

2. Crie uma consulta que retornará todos os títulos de CDs da DJs on Demand ordenados por ano,
com os títulos em ordem alfabética por ano.

R:
SELECT TITLE, YEAR
FROM D_CDS
ORDER BY 2,1;

3. Ordene as músicas da DJs on Demand por título em ordem decrescente. Use o alias "Our
Collection" para o título da música.

R:
SELECT TITLE "Our Collection"
FROM D_SONGS
ORDER BY "Our Collection" DESC;

4. Usando a cláusula ORDER BY, crie uma instrução SQL que possa recuperar as informações
necessárias. Não execute a consulta.

Crie uma lista de alunos que estejam no primeiro ano escolar. Inclua o nome, o sobrenome, o
número do ID do aluno e o número da vaga de estacionamento. Classifique os resultados em
ordem alfabética por sobrenome e, em seguida, por nome dos alunos. Se mais de um aluno tiver
o mesmo sobrenome, classifique cada nome na ordem de Z a A. Todos os outros resultados
devem estar em ordem alfabética (A a Z). 

R:
SELECT FIRST_NAME || ' ' || LAST_NAME "FULL NAME", ID_STUDENT, PARK_NUMBER
FROM STUDENTS
ORDER BY LAST_NAME DESC, FIRST_NAME DESC

5. Crie uma instrução SQL usando a tabela de funcionários e a cláusula ORDER BY para recuperar
as informações da tabela a seguir. O resultado deverá retornar somente os funcionários com
employee_id<125

DEPARTMENT_ID LAST_NAME  MANAGER_ID
90            Kochhar    100
90            King      (null)
90            De Haan    100
60            Lorentz    103
60            Hunold     102
60            Ernst      103
50            Mourgos    100

R:
SELECT DEPARTMENT_ID, LAST_NAME, MANAGER_ID
FROM EMPLOYEES
WHERE EMPLOYEE_ID < 125
ORDER BY DEPARTMENT_ID DESC, LAST_NAME DESC, MANAGER_ID;

1. O uso da cláusula WHERE para limitar valores é um exemplo de:
a. Projeção
b. Ordenação
c. Junção
d. Agrupamento
e. Seleção

R: SELEÇÃO

2. Você deseja classificar sua coleção de CDs por título e, depois, por artista. Para isso, você
poderá usar:
a. WHERE
b. SELECT
c. ORDER BY
d. DISTINCT

R: ORDER BY

3. Quais das seguintes opções são palavras-chave SQL?
a. SELECT
b. ALIAS
c. COLUMN
d. FROM

R: SELECT, FROM

4. Quais das seguintes afirmativas são verdadeiras?
a. A multiplicação e a divisão têm prioridade sobre a adição.
b. Os operadores que têm a mesma prioridade são avaliados da esquerda para a direita.
c. Os parênteses podem ser usados para substituir as regras de precedência.
d. Nenhuma das opções acima.

R: a), b), c) 

5. A consulta a seguir foi criada:
SELECT DISTINCT last_name
FROM students
a. Para selecionar todos os alunos mais destacados
b. Para escolher os sobrenomes duplicados
c. Para selecionar os sobrenomes não duplicados
d. Para selecionar todos os sobrenomes

R: 

6. A string a seguir foi criada usando qual cláusula SELECT?
Abby Rogers is an order taker for Global Fast Foods
a. SELECT first_name ||' ' ||last_name ||' is an ' staff_type ' for Global Fast Foods'
b. SELECT Abby Rogers is an ||staff_type||' for Global Fast Foods'
c. SELECT first_name,last_name '||staff_type||' for Global Fast Foods'
d. SELECT first_name ||' ' ||last_name ||' is an '||staff_type||' for Global Fast Foods'
7. Quais das seguintes cláusulas SELECT retornarão cabeçalhos de coluna em letras maiúsculas?
a. SELECT id, last_name, address, city, state, zip, phone_number;
b. SELECT ID, LAST_NAME, ADDRESS, CITY, STATE, ZIP, PHONE_NUMBER;
c. SELECT Id, Last_name, Address, City, State, Zip, Phone_number;
d. SELECT id AS ID, last_name AS NAME, address AS ADDRESS, city AS CITY, state AS
STATE, zip AS ZIP, phone_number AS PHONE_NUMBER;
8. Qual instrução SELECT sempre retornará os sobrenomes em ordem alfabética?
a. SELECT last_name AS ORDER BY FROM employees
b. SELECT last_name FROM employees ORDER BY last_name
c. SELECT last_name FROM employees
d. SELECT ASC last_name FROM employees

9. Qual cláusula SELECT retornará um cabeçalho de coluna chamado “New Employees”? para
employee_id?
a. SELECT last_name AS "New Employees"
b. SELECT employee_id AS New Employees
c. SELECT employee AS "New Employees"
d. SELECT employee_id AS "New Employees"
10.Examine a consulta a seguir:
SELECT last_name, job_id, salary
FROM employees
WHERE job_id = 'SA_REP' OR job_id = 'AD_PRES' AND salary >15000;
Quais resultados essa consulta não poderia retornar?
a. Joe Everyone, sales representative, salary 15000
b. Jane Hendricks, sales manager, salary 15500
c. Arnie Smithers, administration president, 20000
d. Jordan Lim, sales representative, salary 14000
11.Conclua esta consulta para que ela retorne todos os funcionários cujos sobrenomes iniciam com
“St”.
SELECT last_name
FROM employees
12.Quais valores de salários essa consulta não retornará?
SELECT last_name, first_name, salary
FROM employees
WHERE salary BETWEEN 1900 AND 2100;
13.Corrija cada cláusula WHERE:
a. WHERE department_id NOT IN 101,102,103;
b. WHERE last_name = King
c. WHERE start date LIKE "05-May-1998"
d. WHERE salary IS BETWEEN 5000 AND 7000
e. WHERE id =! 10
14.SELECT prefixo
 FROM phone
 WHERE prefix BETWEEN 360 AND 425
 OR prefix IN (206,253,625)
 AND prefix BETWEEN 315 AND 620;
Qual dos seguintes valores poderia ser retornado?
625, 902, 410, 499
*/