/* DESCRIBE 

USADO PARA EXIBIR A ESTRUTURA DE UMA TABELA

E:
DESCRIBE <table_name>

DESC retorna o nome da tabela, os tipos de dados, as chaves primárias e estrangeira, as colunas anuláveis e outros detalhes de objetos que são abordados mais adiante no curso

OBS: Essas informações são importantes para inserir novas linhas em uma tabela porque você precisa saber o tipo de dados aceitável por cada coluna e se ela pode ser deixada vazia ou não */

/* CONCATENAÇÃO

Representado por duas barras verticais (pipes) ||

A sintaxe é:

EX:
string1 || string2 || string_n
 
Em SQL, o operador de concatenação pode vincular colunas a outras colunas, expressões artiméticas ou valores de constante e criar uma expressão de caracteres

Ele é usado para gerar uma saída de texto legível

No exemplo a seguir, department_id é concatenado a department_name:

EX:
SELECT department_id ||
department_name
FROM departments*/

/* Nesta variação do exemplo anterior, || '' || é usado para criar um espaço entre department_id e department name

O caractere 'espaço', em aspas simples, cria um espaço entre os valores da coluna

EX:
SELECT department_id || '' || department_name
FROM departments;

ALIASES DE CONCATENAÇÃO E COLUNA:

Aliases de coluna são úteis quando se usa o operador de concatenação para que a linha SELECT padrão não apareça como título da coluna

EX:
SELECT department_id || '' || department_name AS "Department Info"
FROM departments;

SELECT first_name || '' || last_name AS "Employee Name"
FROM employees;

CONCATENAÇÃO E VALORES LITERAIS:

Um valor literal é um valor de dados fixo (constante), como um caractere, um número ou uma data.

Os itens a seguir são exemplos de valores literais:

EX:
'dollars'
1000
'January 1, 2009'

Ao usar concatenação e valores literais, você pode criar uma saída que se pareça com uma sentença ou afirmação.

Valores literais podem ser incluídos na lista SELECT com o operador de concatenação

Caracteres e datas devem estar entre aspas simples ('')

Cada linha que retorna uma consulta com valores literais terá a mesma string de caracteres.

EX:
SELECT last_name || ' has a monthly salary of ' || salary || ' dollars.' AS Pay
FROM employees;

RETORNO:
King has a monthly salary of 24000 dollars

No exemplo a seguir, King ganha 24000 dólares por mês.

As strings 'has a monthly salary of' e 'dollars' são exemplos de valores literais.

Você também pode incluir números como valores literais

No exemplo a seguir, o número 1 está concatenado com as strings 'has a' e 'year salary of'

EX: 
SELECT last_name || ' has a ' || 1 || ' year salary of ' || salary*12 || ' dollars.' AS PAY
FROM EMPLYEES;

USANDO DISTINCT PARA ELIMINAR LINHAS DUPLICADAS:

Muitas vezes, você vai querer saber quantas instâncias de algo existem.

E se você quisesse, por exemplo, uma lista de todos os departamentos nos quais há funcionários

Você poderá gravar uma consulta para selecionar os departments_ids da tabela de funcionários:

EX:
SELECT department_id
FROM employees;

RETORNO:
90
90
90
10
110
110
80
80
...

Observe todas as linhas duplicadas

Como você pode modificar a instrução para eliminá-las?

Em SQL, a palavra-chave DISTINCT é usada para eliminar essas linhas.

O qualificador DISINCT afeta todas as colunas listadas e retorna cada combinação distinta das colunas na cláusula SELECT

A palavra-chave DISTINCT deve aparecer logo após SELECT

EX:
SELECT DISTINCT department_id
FROM employees;

RETORNO:
-
90
20
110
80
50
10
60


 
*/