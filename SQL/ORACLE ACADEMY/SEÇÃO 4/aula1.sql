MANIPULAÇÃO DE LETRAS MAIÚSCULAS E MINÚSCULAS E DE CARACTERES:

OBS: TABELA DUAL

* A TABELA DUAL É USADA PARA CRIAR INSTRUÇÕES SELECT E EXECUTAR FUNÇÕES NÃO DIRETAMENTE RELACIONADAS A UMA TABLEA DE BANCO DE DADOS ESPECÍFICA.

* AS CONSULTAS QUE USAM A TABELA DUAL RETORNAM UMA LINHA COMO RESULTADO. DUAL PODE SER ÚTIL PARA FAZER CÁLCULOS E TAMBÉM AVALIAR EXPRESSÕES QUE NÃO SEJAM DERIVADAS DE UMA TABELA

- TABELA DUAL:

* DUAL SERÁ USADA PARA APRENDER FUNÇÕES DE LINHA ÚNICA

* A TABELA DUAL É USADA PARA EXECUTAR UMA INSTRUÇÃO SELECT QUE CONTÉM UM CÁLCULO

EX: 

SELECT (319/29) + 12
FROM DUAL;

RETURN:

(319/29)+12 <- COLUNA
23 <- TUPLA

* COMO VOCÊ PODE VER, A INSTRUÇÃO SELECT RETORNA UM VALOR QUE NÃO EXISTE NA TABELA DUAL

- FUNÇÕES DE CARACTERE DE LINHA ÚNICA:

* AS FUNÇÕES DE CARACTERE DE LINHA ÚNICA ESTÃO DIVIDIDAS EM DUAS CATEGORIAS:

. FUNÇÕES QUE CONVERTEM AS LETRAS MAIÚSCULAS E MINÚSCULAS DE STRINGS DE CARACTERES:

LOWER;
UPPER;
INITCAP;

* SÃO USADAS PARA CONVERTER O ESTADO NO QUAL OS DADOS ESTÃO ARMAZENADOS EM UMA TABELA PARA LETRA MINÚSCULA, MAIÚSCULAS OU AMBAS.

* ESSAS CONVERSÕES PODEM SER USADAS PARA FORMATAR A SAÍDA E TAMBÉM PARA PESQUISAR STRINGS ESPECÍFICAS

* PODEM SER USADAS NA MAIORIA DAS PARTES DE UMA INSTRUÇÃO SQL.

* SÃO ÚTEIS QUANDO VOCÊ ESTÁ PESQUISANDO DADOS E NÃO SABE SE ELES ESTÃO EM LETRAS MAIÚSCULAS OU MINÚSCULAS.

* DO PONTO DE VISTA DO BANCO DE DADOS, 'V' E 'v' *NÃO* SÃO O MESMO CARACTERE E, PORTANTO, VOCÊ PRECISA FAZER A PESQUISA USANDO A FORMATAÇÃO CORRETA.

LOWER(column | expression) converte caracteres alfabéticos em letras minúsculas

EX:

SELECT last_name
FROM employees
WHERE LOWER(last_name) = 'abel';

RETURN:

LAST_NAME
-
Abel

UPPER(column | expression) converte caracteres alfabéticos em letras maiúsculas

EX:

SELECT LAST_NAME
FROM employees
WHERE UPPER(last_name) = 'ABEL';

RETURN:

last_name
Abel

INITCAP(column | expression) converte os valores de caracteres alfabéticos para letra maiúscula no caso da primeira letra de cada palavra.

EX:

SELECT last_name
FROM employees
WHERE INITCAP(last_name) = 'Abel';

Return:

Last_name
Abel

. FUNÇÕES QUE PODEM JUNTAR, EXTRAIR, MOSTRAR LOCALIZAR, PREENCHER E REDUZIR STRINGS DE CARACTERES:

CONCAT;
SUBSTR;
LENGTH;
INSTR;
LPAD | RPAD;
TRIM;
REPLACE;

* FUNÇÕES DE MANIPULAÇÃO DE CARACTERES SÃO USADAS PARA EXTRAIR, FORMATAR OU ALTERAR DE ALGUMA FORMA UMA STRING DE CARACTERES

* UM OU MAIS CARACTERES OU PALAVRAS SÃO PASSADOS PARA A FUNÇÃO. ELA VAI AGIR NAS STRINGS DE CARACTERES DE ENTRADA E RETORNAR O VALOR EXTRAÍDO, CONTADO OU ALTERADO.

CONCAT: Junta dois valores

~ Seleciona argumentos com duas strings de caracteres e junta a segunda string à primeira. Esta função também pode ser gravada usando o operador de concatenação: 'Hello' || 'World'

EX:

SELECT CONCAT('Hello', 'World')
FROM DUAL;

-------

SELECT CONCAT(first_name, last_name)
FROM employees;

Return:

HelloWord

-------

EllenAbel
CurtisDavies

SUBSTR: extrai uma string com um determinado tamanho

~ Os argumentos são (string de caracteres, posição inicial, tamanho)

~ O argumento de tamanho é opcional. Se ele for omitido, são retornados todos os caracteres que existem até o final da string.

EX:

SELECT SUBSTR('HelloWorld',1,5)
FROM DUAL;

------

SELECT SUBSTR('HelloWorld', 6)
FROM DUAL;

------

SELECT SUBSTR(last_name,1,3)
FROM employees;

Return:

Hello

------

World

------

Abe
Dav

LENGTH: mostra o tamanho de uma string como um valor numérico

~ A função seleciona uma string de caracteres como um argumento e retorna o número de caracteres presentes nessa string

EX:

SELECT LENGTH('HelloWorld')
FROM DUAL;

------

SELECT LENGTH(last_name)
FROM employees

Return:

10

------

4
6
...

INSTR: encontra a posição numérica do(s) caractere(s) especificado(s)

~ INSTR pesquisa a primeira ocorrência de uma substring em uma string de caracteres e retorna a posição como um número

~ Se a substr não for encontrada, o número zero é encontrado (no sql a string começa no índice 1)

EX:

SELECT INSTR('HelloWorld', 'W')
FROM DUAL;

------ 

SELECT last_name, INSTR(last_name, 'a')
FROM EMPLOYEES

return:

6

------

Abel 0
Davies 2
...

LPAD: preenche o lado esquerdo de uma string de caracteres, resultado em um valor justificado à direita

~ LPAD requer 3 argumentos: uma string de caracteres, o número total de caracteres na string preenchida e o caractere que será colocado.

* FUNÇÕES DE LINHA ÚNICA PODEM SER USADAS NAS CLÁUSULAS SELECT, WHERE e ORDER BY.

*AS FUNÇÕES DE MANIPULAÇÃO DE LETRAS MAIÚSCULAS E MINÚSCULAS SÃO IMPORTANTES PORQUE VOCÊ PODE NEM SEMPRE SABER DE QUE MODO OS DADOS ESTÃO ARMAZENADOS NO BANCO DE DADOS (COM LETRAS MAIÚSCULAS
, MINÚSCULAS OU AMBAS)*

* A MANIPULAÇÃO DE LETRAS MAIÚSCULAS E MINÚSCULAS PERMITE CONVERTER TEMPORARIAMENTE OS DADOS DO BANCO DE DADOS PARA O FORMATO DE SUA PREFERÊNCIA

* DESSE MODO, EVITA-SE INCOMPATIBILIDADE ENTRE O USO DE LETRAS MAIÚSCULAS E MINÚSCULAS ARMAZENADO NO BANCO DE DADOS E AS SOLICITAÇÕES DE LETRAS MAIÚSCULAS E MINÚSCULAS DA CONSULTA.




