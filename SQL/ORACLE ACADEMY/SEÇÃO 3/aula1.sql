/* OPERADORES LÓGICOS */

/* Ao usar SQL, muitas vezes se quer restringir as linhas retornadas por uma consulta com base em duas ou mais condições.

Se você fosse o gerente de um fast food, talvez precisasse saber os nomes dos funcionários que são cozinheiros ou atendentes.

Você não quer nem precisa da lista com todos os funcionários, apenas um subconjunto dela

Os operadores condicionais, como AND, NOT e OR, facilitam esse tipo de solicitação. */

/* Um operador lógico combina duas ou mais condições para produzir um único resultado

Ele será retornado SOMENTE SE o resultado geral da condição for verdadeiro

AND: retorna TRUE (Verdadeiro) se ambas as condições forem verdadeiras.

OR: retorna TRUE (Verdadeiro) se uma das condições for verdadeira

NOT: retorna TRUE (Verdadeiro) se a condição for falsa 

OPERADOR AND:

Nas consultas abaixo, os resultados retornados serão linhas que satisfaçam AMBAS as condições especificadas na cláusula WHERE

EX:
SELECT last_name, department_id, salary
FROM EMPLOYEES
WHERE department_id > 50 AND salary > 12000

RETORNO:
King    | 90 | 24000
Kochhar | 90 | 17000
De Haan | 90 | 17000

*/
/*
Outro exemplo do uso do AND na cláusula WHERE

EX:
SELECT last_name, hire_date, job_id
FROM EMPLOYEES
WHERE hire_date > '01-Jan-1998' AND job_id LIKE 'SA%';

RETORNO:
Zlotkey | 29-Jan-2000 | SA_MAN
Taylor  | 24-Mar-1998 | SA_REP
Grant   | 24-May-1999 | SA_REP

OPERADOR OR:

Se a cláusula WHERE usar a condição OR, os resultados que retornam de uma consulta serão linhas que satisfaçam uma das condições

Em outras palavras, todas as linhas retornadas terão location_id de 2500 OU manager_id igual a 124

EX:
SELECT department_name, manager_id, location_id
FROM DEPARTMENTS
WHERE location_id = 2500 OR manager_id = 124;

RETORNO:
Shipping | 124 | 1500
Sales    | 149 | 2500

OPERADOR NOT:

O operador NOT retornará linhas que NÃO satisfaçam a condição na cláusula WHERE

EX:
SELECT department_name, location_id
FROM departments
WHERE location_id NOT IN (1700,1800);

RETORNO:
Shipping | 1500
IT       | 1400
Sales    | 2500

REGRAS DE PRECEDÊNCIA:

Considerem a instrução SELECT a seguir

Em que ordem as expressões são avaliadas e calculadas?

EX:
SELECT last_name || ' ' || salary*1.05 AS "Employee Raise"
FROM EMPLOYEES
WHERE department_id IN(50,80) AND first_name LIKE 'C%' OR last_name LIKE '%s%';

Por sorte, quando as coisas ficam complicadas, a linguagem SQL oferece algumas regras que são fáceis de seguir

ORDER | OPERATOR
1     | Arithmetic + - * /
2     | Concatenation ||
3     | Comparison <, <=, >, >=, <> (^=)
4     | IS (NOT) NULL, LIKE, (NOT) IN
5     | (NOT) BETWEEN
6     | NOT
7     | AND
8     | OR

Observe que o operador AND é avaliado antes do operador OR

No exemplo anterior, isso significa que, se nenhuma das condições na instruções AND for atendida, o operador OR será usado em seguida para selecionar as linhas.

OBS: É importante se lembrar desse conceito

EX:
SELECT last_name || ' ' || salary*1.05 AS "Employee Raise"
FROM EMPLOYEES
WHERE department_id IN(50,80) 
	AND first_name LIKE 'C%' 
	OR last_name LIKE '%s%';

RETORNO:
Higgins 12600   | 110 | Shelley
Mourgos 6090    | 50  | Kevin
Rajs 3675       | 50  | Trenna
Davies 3255     | 50  | Curtis
Matos 2730      | 50  | Randall
Vargas 2625     | 50  | Peter
Ernst 6300      | 60  | Bruce
Hartstein 13650 | 20  | Michael

Primeiramente, a condição AND é avaliada. Portanto, são retornados todos os funcionários que trabalham no departamento (department_id) 80 ou 50 E cujo nome (first_name) começa com "C".

Em seguida, a cláusula OR é avaliada e retorna os funcionários cujo sobrenome contém "s" (sob Employee Raise).

EX: 
SELECT last_name || ' ' || salary*1.05 AS "Employee Raise", department_id, first_name
FROM employees
WHERE department_id IN(50,80)
	OR first_name LIKE 'C%'
	AND last_name LIKE '%s%';

OBS: A ordem das operações é:
1° - first_name começa com "C" e last_name contém um "s". Ambas essas condições devem ser atendidas para serem retornadas
2° Qualquer instância de funcionários no departamento 50 e 80 será retornada.

Acrescentar parênteses muda a maneira como a cláusula WHERE é avaliada e as linhas são retornadas.

EX:
SELECT last_name || ' ' || salary * 1.05 AS "Employee Raise", department_id, first_name 
FROM EMPLOYEES
WHERE (department_id) IN (50,80) OR first_name LIKE 'C%') 
	AND last_name LIKE '%s%';

OBS: A ordem das operações é:
1° - Os valores entre parênteses são selecionados
2° - Serão retornadas todas as instâncias dos valores entre parênteses que também contiverem  a letra "s" em last_name.


*/
