/* CLÁUSULA ORDER BY:

Informações classificadas em ordem crescente é algo comum para a maioria de nós

É o que torna relativamente fácil procurar um número em uma agenda telefônica, encontrar uma palavra no dicionário ou localizar uma casa pelo endereço

A linguagem SQL usa a cláusula ORDER BY para ordenar dados

A cláusula ORDER BY pode especificar várias maneiras de ordenar as linhas retornadas em uma consulta.

A ordem de classificação padrão é crescente

Valores numéricos são exibidos do menor para o maior

Valores de data são exibidos a partir do mais antigo

Valores de caractere são exibidos em ordem alfabética

Valores nulos são exibidos por último em ordem crescente e primeiro em ordem decrescente

NULLS FIRST especifica que valores NULOS devem ser retornados antes de valores não NULOS

NULLS LAST especifica que valores NULOS devem ser retornados depois de valores não NULOS

O exemplo com funcionários a seguir usa a cláusula ORDER BY para ordenar hire_date em ordem crescente (padrão)

OBS: ORDER BY deve ser a última cláusula da instrução SQL

EX:
SELECT last_name, hire_date
FROM employees
ORDER BY hire_date;

RETORNO:
King      | 17-Jun-1987
Whalen    | 17-Sep-1987
Kochhar   | 21-Sep-1989
Hunold    | 03-Jan-1990
Ernst     | 21-May-1991
De Haan   | 13-Jan-1993
Gietz     | 07-Jun-1994
Higgins   | 07-Jun-1994
Rajs      | 17-Oct-1995
Hartstein | 17-Feb-1996

CLASSIFICANDO EM ORDEM DECRESCENTE:

Na cláusula ORDER BY, é possível inverter a ordem padrão para decrescente especificando a palavra-chave DESC após o nome da coluna

EX:
SELECT last_name, hire_date
FROM employees
ORDER BY hire_date DESC;

RETORNO:
Zlotkey | 29-Jan-2000
Mourgos | 16-Nov-1999
Grant   | 24-May-1999
Lorentz | 07-Feb-1999
Vargas  | 09-Jul-1998
Taylor  | 24-Mar-1998
Matos   | 15-Mar-1998
Fay     | 17-Aug-1997
Davies  | 29-Jan-1997
Abel    | 11-May-1996

USANDO ALIASES DE COLUNA:

Você pode usar um alias de coluna para ordenar dados

O alias usado na instrução SELECT é referenciado na cláusula ORDER BY

EX:
SELECT last_name, hire_date AS "Date Started"
FROM employees
ORDER BY "Date Started";

RETORNO:
LAST_NAME | Date Started
King      | 17-Jun-1987
Whalen    | 17-Sep-1987
Kochhar   | 21-Sep-1989
Hunold    | 03-Jan-1990
Ernst     | 21-May-1991
De Haan   | 13-Jan-1993
Gietz     | 07-Jun-1994
Higgins   | 07-Jun-1994
Rajs      | 17-Oct-1995
Hartstein | 17-Feb-1996

CLASSIFICANDO COM OUTRAS COLUNAS:

Também é possível usar a cláusula ORDER BY para ordenar a saída por uma coluna que não está listada na cláusula SELECT

No exemplo a seguir, os dados são classificados pela coluna last_name, mesmo que não esteja listada na instrução SELECT

SELECT employee_id, first_name
FROM employees
WHERE employee_id < 105
ORDER BY last_name;

RETORNO:
102 | Lex
104 | Bruce
103 | Alexander
100 | Steven
101 | Neena

ORDEM DE EXECUÇÃO:

A ordem de execução de uma instrução SELECT é a seguinte:

* Cláusula FROM: Localiza a tabela que contém os dados
* Cláusula WHERE: Restringe as linhas a serem retornadas
* Cláusula SELECT: Seleciona as colunas solicitadas no conjunto
* Cláusula ORDER BY: Ordena o conjunto de resultados

CLASSIFICANDO COM VÁRIAS COLUNAS:

Também é possível classificar os resultados de uma consulta por mais de uma coluna

Na verdade, não existe um limite em relação ao número de colunas que você pode adicionar à cláusula ORDER BY.

Veja abaixo um exemplo da classificação com várias colunas 

Os funcionários são primeiro ordenados por número de departamento (do menor para o maior). Em seguida, para cada departamento, os sobrenomes (last_name) são exibidos em ordem alfabética (A a Z).

EX:
SELECT department_id, last_name
FROM employees
WHERE department_id <= 50
ORDER BY department_id, last name;

RETORNO:
DEPARTMENT_ID | LAST_NAME
10            | Whalen
20            | Fay
20            | Hartstein
50            | Davies
50            | Matos
50            | Mourgos
50            | Rajs
50            | Vargas

Para criar uma cláusula ORDER BY que classifique por várias colunas, especifique as colunas a serem retornadas e use vírgulas para separar os nomes delas

Se quiser inverter a ordem de classificação de uma coluna, adicione DESC após o nome dela

EX:
SELECT department_id, last_name
FROM employees
WHERE department_id <= 50
ORDER BY department_id DESC, last_name;

RETORNO:
50 | Davies
50 | Matos
50 | Mourgos
50 | Rajs
50 | Vargas
20 | Fay
20 | Hartstein
10 | Whalen */
