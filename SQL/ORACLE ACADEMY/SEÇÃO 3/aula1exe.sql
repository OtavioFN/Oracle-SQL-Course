/*
Inverte o valor da condição:

R: NOT

As duas condições devem ser verdadeiras para que um registro seja selecionado:

R: AND

Regras que determinam a ordem na qual as expressões são avaliadas e calculadas:

R: Ordem de precedência

Para que um registro seja selecionado, qualquer uma das condições pode ser verdadeira:

R: OR
*/

/*
1. Execute as duas consultas abaixo. Por que estas duas instruções praticamente idênticas
produzem dois resultados diferentes? Indique a diferença e explique o motivo.

SELECT code, description
FROM d_themes
WHERE code >200 AND description IN('Tropical', 'Football', 'Carnival');

SELECT code, description
FROM d_themes
WHERE code >200 OR description IN('Tropical', 'Football', 'Carnival');

No primeiro SELECT, a cláusula vai retornar os temas que tem código igual a 200 E a descrição estando dentro da lista de descrições escolhidas.

No segundo SELECT, a cláusula OR vai fazer com que somente os temas com código igual a 200 OU a descrição esteja dentro dos valores contidos na lista sejam retornados.

*/

/*
2. Exiba os sobrenomes de todos os funcionários da Global Fast Foods que contêm “e” e “i”.

SELECT last_name
FROM F_STAFFS
WHERE last_name LIKE '%e%' AND last_name LIKE '%i%';

3. Preciso saber quais funcionários da Global Fast Foods ganham mais de US$ 6,50/hora e não
ocupam a posição de anotador de pedidos.

SELECT ID, FIRST_NAME || ' ' || LAST_NAME "FULL NAME"
FROM F_STAFFS
WHERE SALARY > 6.50 AND STAFF_TYPE NOT LIKE 'Order Taker';

4. Usando a tabela funcionários, crie uma consulta para exibir todos os funcionários cujos
sobrenomes iniciam com “D” e têm “a” e “e” no sobrenome.

SELECT FIRST_NAME || ' ' || LAST_NAME "FULL NAME"
FROM F_STAFFS
WHERE LAST_NAME LIKE 'D%' AND LAST_NAME LIKE '%a%' AND LAST_NAME LIKE '%e%';

5. Em quais locais a DJs on Demand realizou eventos que não foram em residências particulares?

SELECT ADDRESS
FROM D_VENUES
WHERE LOC_TYPE NOT LIKE 'Private Home';

6. Qual lista de operadores está na ordem correta iniciando do de maior para o de menor
precedência?
a. AND, NOT, OR
b. NOT, OR, AND
c. NOT, AND, OR

R: LETRA C

Para as perguntas 7 e 8, crie as instruções SQL que produzirão a saída desejada.

7. Quem sou eu?
Fui contratado pela Oracle entre maio de 1998 e junho de 1999. Meu salário é inferior a
US$ 8000 por mês e tenho “en” no meu sobrenome.

SELECT FIRST_NAME || ' ' || LAST_NAME "FULL NAME"
FROM EMPLOYEES
WHERE HIRE_DATE BETWEEN '01/05/1998' AND '30/06/1999'
AND SALARY < 8000
AND LAST_NAME LIKE '%en%';

107	Diana Lorentz

8. Qual é o meu endereço de e-mail?
Como trabalho para a Oracle desde o início de 1996, ganho mais de US$ 9000 por mês. Como
tenho um bom salário, não recebo comissão.

SELECT EMAIL
FROM EMPLOYEES
WHERE HIRE_DATE >= '01/01/1996'
AND SALARY > 9000
AND COMMISSION_PCT IS NULL;

MHARTSTE
*/