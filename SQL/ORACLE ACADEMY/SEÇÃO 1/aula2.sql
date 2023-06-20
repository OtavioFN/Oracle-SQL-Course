/* TECNOLOGIA DO BANCO DE DADOS RELACIONAL */

/* O RDBMS (Relational Database Management System) é o sistema gerenciador de banco de dados relacionais (coleção de dados organizados em tabelas) */

/* Tabela: estrutura de armazenamento básica
coluna: um tipo de dado em uma tabela
linha: dado para uma instância de tabela
campo: o valor encontrado na intersecção entre uma linha e uma coluna
chave primária: o identificador exclusivo de cada linha
chave estrangeira: coluna que se refere a uma coluna de chaves primárias em outra tabela*/

/* PROPRIEDADES DE TABELAS: Existem seis propriedades de tabelas em um banco de dados

1° - As entradas nas colunas têm um valor único
2° - As entradas nas colunas são do mesmo tipo
3° - Cada linha é única
4° - A sequência das colunas não é significativa
5° - A sequência das linhas não é significativa
6° - Cada coluna tem um nome exclusivo
 */

/* CATEGORIAS DE INSTRUÇÕES SQL: Existem quatro categorias principais de instruções SQL

. Data Manipulation Language (DML)
. Data Definition Language (DDL)
. Transaction Control Language (TCL)
. Data Control Language (DCL)

-> Data Manipulation Language (DML):

- As instruções DML começam com INSERT, UPDATE, DELETE ou MERGE e são usadas para modificar os dados da tabela por meio da inclusão de novas linhas e da alteração ou remoção das linhas existentes.

-> Data Definition Language (DDL):

- As instruções DDL criam, modificam e removem as estruturas de dados do banco de dados

- Elas são iniciadas pelas palavras-chave CREATE, ALTER, DROP, RENAME e TRUNCATE.

-> Transaction Control Language (TCL):

- As instruções TCL são usadas para gerenciar as alterações feitas pelas instruções DML

- As modificações nos dados são feitas usando COMMIT, ROLLBACK e SAVEPOINT.

-> Data Control Language (DCL):

- As palavras GRANT e REVOKE de DCL são usadas para fornecer ou remover direitos de acesso ao banco de dados e às estruturas dentro dele
*/