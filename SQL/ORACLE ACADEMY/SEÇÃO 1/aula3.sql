/* 
-> SELECT:

- Usa-se SELECT para recuperar informações do banco de dados. 

-> Recursos das Instruções SELECT:

- Projeção: Usada para escolher colunas em uma tabela

- Seleção: usada para escolher linhas em uma tabela

-> ALIASES (AS): Várias regras se aplicam ao uso de aliases de coluna para formatar a saída

UM ALIAS DE COLUNA:

- Renomeia um título de coluna

- É útil para cálculos

- Vem imediatamente após o nome da coluna

- Pode ter a palavra-chave AS opcional entre o nome da coluna e o ALIAS

- Requer aspas duplas se o ALIAS tiver espaços ou caracteres especiais ou fizer distinção entre letras maiúsculas e minúsculas

SINTAXE:

SELECT * | column | expr [ AS alias], ...
FROM  table;

EX:

SELECT last_name AS name, commission_pct AS comn
FROM employees;

SELECT last_name "Name", salary*12 "Annual Salary"
FROM employees;

 */