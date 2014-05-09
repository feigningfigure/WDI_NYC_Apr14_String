-- "schema" is the SQL code required to 'build' your database tables, etc.

CREATE TABLE lunches
(
  id  serial NOT NULL primary key,
  lunch_name varchar(255),
  rating smallint
);
