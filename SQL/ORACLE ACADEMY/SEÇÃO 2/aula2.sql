/* 
CLÁUSULA WHERE:

A CLÁUSULA WHERE É OPCIONAL

Ao recuperar dados do banco de dados, você pode limitar as linhas que são exibidas

Faça isso usando a cláusula WHERE

A cláusula WHERE contém uma condição que deve ser atendida e aparece imediatamente após a cláusula FROM em uma instrução SQL

A sintaxe da cláusula WHERE é:

EX:
WHERE column_name comparison_condition comparison_value

OBS: Não é possível usar um alias na cláusula WHERE!

Examine a instrução SQL abaixo do banco de dados de funcionários:

EX:
SELECT employee_id, first_name, last_name
FROM employees;

RETORNO:
100 | STEVEN | KING
101 | NEENA  | KOCHHAR
102 | LEX    | DE HAAN

Com o acréscimo de uma cláusula WHERE, limita-se o resultado às linhas nas quais o valor de employee_id é 101

EX:
SELECT employee_id, first_name, last_name
FROM employees
WHERE employee_id = 101;

RETORNO:
101 | NEENA | KOCHHAR

OPERADORES DE COMPARAÇÃO NA CLÁUSULA WHERE:

= igual a
> maior que
>= maior ou igual a 
< menor que
<=menor ou igual a
<> diferente de (ou != ou ^=)

STRING DE CARACTERES E DATAS NA CLÁUSULA WHERE:

As strings de caracteres e as datas na cláusula WHERE devem estar entre aspas simples ('')

Os número, no entanto, não devem estar entre aspas simples

Veja o exemplo do banco de dados de funcionário a seguir

A cláusula WHERE contém uma string que está entre aspas simples

EX:
SELECT first_name, last_name
FROM employees
WHERE last_name = 'Taylor';

O que você acha que vai acontecer se a cláusula WHERE for gravada assim:

EX:
WHERE last_name = 'jones'

Todas as pesquisas de caracteres farão distinção entre letras maiúsculas e minúsculas.

Como a tabela de funcionários armazena todos os sobrenome (last_name) com as iniciais apropriadas, nenhuma linha é retornada nesse exemplo

É importante se lembrar disso

Em outra lição, você aprenderá a usar outras palavras-chave SQL (UPPER, LOWER e INITCAP) que ajudarão a evitar erros relacionados à distinção entre letras maiúsculas e minúsculas

Os operadores de comparação podem ser usados podem ser usados das seguintes maneiras na cláusula WHERE:

EX:
WHERE hire_date < '01-Jan-2000';

WHERE salary >= 6000;

WHERE job_id = 'IT_PROG';

No exemplo do banco de dados de funcionários a seguir, quais linhas serão selecionadas?

Salários de 3000 serão incluídos nos resultador?

SELECT last_name, salary
FROM employees 
WHERE salary <= 3000;
