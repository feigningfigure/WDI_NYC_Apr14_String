## PSQL USEFUL COMMANDS & SYNTAX


\l				List all databases

\c dbname		Change db

\d				Display all tables in database

\d tablename	Describe the details of given table

\h				Get a help on syntax of SQL commands

\?				Lists all psql slash commands.

\q				Quit psql



——————————————-


CREATE DATABASE db_name;


CREATE TABLE table_name (id );

Example:

CREATE TABLE students
(
id serial NOT NULL primary key,
first_name varchar(255),
last_name varchar(255),
date date
)



INSERT INTO table_name 
(colname1,colname2) 
VALUES (value1,value2);


SELECT * FROM table_name WHERE col_name=some_value;


UPDATE table_name SET col_name = some_value WHERE id = some_id;


DELETE FROM table_name WHERE id=some_id;


DROP TABLE table_name;

DROP DATABASE [ IF EXISTS ] dbname; 