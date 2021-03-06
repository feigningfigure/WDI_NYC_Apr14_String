-- "schema" is the SQL code required to 'build' your database tables, etc.
CREATE TABLE items
(
  id  serial NOT NULL primary key,
  name varchar(255),
  price decimal (5,2),
  description  text,
  quantity integer,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

