/* Esta opção indica que os caracteres de escape devem ser
interpretados literalmente 

ESCAPE

*/
/* A condição verifica se há valores nulos

IS NULL
 */
/* Exibe as linhas com base em uma faixa de valores 

BETWEEN...AND
*/
/* Incluindo os limites especificados e a área entre eles; os
números de 1 a 10, inclusive 

IN
*/
/* Seleciona as linhas que correspondem a um padrão de
caracteres 

LIKE
*/
/* Verifica os valores em uma lista especificada de valores 

IN

*/
/*1. Exiba o nome, o sobrenome e o salário de todos os funcionários da Global Fast Foods que
ganham entre US$ 5,00 e US$ 10,00 por hora.*/

SELECT
    FIRST_NAME,
    LAST_NAME,
    SALARY
FROM
    F_STAFFS
WHERE
    SALARY BETWEEN 5
    AND 10;

/*2. Exiba o tipo de local e comentários de todos os eventos da DJs on Demand realizados em uma
Residência Particular.*/

SELECT
    LOC_TYPE,
    COMMENTS
FROM
    D_VENUES
WHERE
    LOC_TYPE LIKE 'Private Home';

/*3. Usando somente os operadores menor que, igual ou maior que, reescreva a consulta a seguir:
SELECT first_name, last_name
FROM f_staffs
WHERE salary BETWEEN 20.00 and 60.00;*/

SELECT
    FIRST_NAME,
    LAST_NAME
FROM
    F_STAFFS
WHERE
    SALARY >= 20
    AND SALARY <= 60;

/*4. Crie uma lista de todos os títulos de CDs da DJs on Demand que têm “a” como a sua segunda
letra.*/

SELECT
    TITLE
FROM
    D_CDS
WHERE
    UPPER(TITLE) LIKE '_A%';

/*5. Quem são os parceiros da DJs on Demand que não têm um valor de despesa autorizado?*/

SELECT
    *
FROM
    D_PARTNERS
WHERE
    AUTH_EXPENSE_AMT IS NOT NULL;

/*6. Selecione todos os funcionários do banco de dados Oracle cujos sobrenomes terminam com “s”.
Altere o cabeçalho da coluna para Possible Candidates.*/

SELECT
    CD_MAT "Possible Candidates"
FROM
    FUNC
WHERE
    UPPER(NM_SOBRENOME) LIKE '%S';

/*7. Quais instruções são válidas?
a. WHERE quantity <> NULL; NÃO É VÁLIDA
b. WHERE quantity = NULL; NÃO É VÁLIDA
c. WHERE quantity IS NULL; VÁLIDA
d. WHERE quantity != NULL; NÃO É VÁLIDA 

*/
/*8. Crie uma instrução SQL que liste as músicas do inventário da DJs on Demand com código de tipo
77, 12 ou 1.*/

SELECT
    *
FROM
    D_SONGS
WHERE
    TYPE_CODE IN (77,
    12,
    1);