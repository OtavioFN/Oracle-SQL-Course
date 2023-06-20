/* Restringe as linhas retornadas por uma instrução select

R: WHERE

Comparam uma expressão com outro valor ou expressão 

R: Operador de comparação

/*Usando o banco de dados da Global Fast Foods, recupere o nome, o sobrenome e o endereço
do cliente que usa o ID 456.*/

SELECT FIRST_NAME, LAST_NAME
FROM F_CUSTOMERS
WHERE ID = 456;

/*Exiba o nome, a data de início e a data de término do brinde promocional “caneta e marcador” da
Global Fast Foods.*/

SELECT START_DATE, END_DATE
FROM F_PROMOTIONAL_MENUS
WHERE GIVE_AWAY = 'ballpen and highlighter';

SELECT *
FROM F_PROMOTIONAL_MENUS;

/*Crie uma instrução SQL que produza a seguinte saída:
Oldest
The 1997 recording in our database is The Celebrants Live in Concert*/

SELECT 'The ' || year || ' recording in our database is ' || title "Oldest"
FROM D_CDS
WHERE CD_NUMBER = 90;

/*
A consulta a seguir deveria retornar o título de CD "Carpe Diem", mas nenhuma linha foi
retornada. Corrija o erro da instrução e exiba a saída.
SELECT produce, title
FROM d_cds
WHERE title = 'carpe diem' ;
*/

SELECT producer, title
FROM d_cds
WHERE upper(title) = 'CARPE DIEM' d_clientsimas três perguntas, use as informações da tabela a seguir:
TABLE NAME: students
COLUMNS:
studentno NUMBER(6)
fname VARCHAR2(12)
lname VARCHAR(20)
sex CHAR(1)
major VARCHAR2(24)*/

/*7. Crie uma instrução SQL que exibirá o número do aluno (studentno), o nome e o sobrenome de
todos os alunos do sexo feminino (F) na tabela alunos.*/

/*SELECT studentno, fname, lname,
FROM students
where upper(sex) = 'F'
*/

/*8. Crie uma instrução SQL que exibirá o número (studentno) de todos os alunos com graduação em
PE na tabela aluno. Atribua à coluna studentno o título Student Number.*/

/*SELECT Studentno "Student Number"
from students
where major = 'PE'*/

/*Crie uma instrução SQL que liste todas as informações sobre todos os alunos do sexo masculino
na tabela alunos.*/

/*SELECT *
FROM students
where upper(sex) = 'M'*/;

/*
10.Crie uma instrução SQL que listará os títulos e os anos de todos os CDs da DJs on Demand que
não foram produzidos no ano 2000.*/

SELECT TITLE, YEAR
FROM D_CDS
WHERE YEAR ^= 2000;

/* 
11.Crie uma instrução SQL que liste os funcionários da Global Fast Foods nascidos antes de 1980.*/

SELECT *
FROM F_STAFFS
WHERE TO_CHAR(BIRTHDATE,'YYYY') < 1980;

*/