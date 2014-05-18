-- "schema" is the SQL code required to 'build' your database tables, etc.

CREATE TABLE posts
(
  id  serial NOT NULL primary key,
  title varchar(255),
  created_at date,
  body  text,
  author varchar(255)
);

CREATE TABLE posts
(
  id  serial NOT NULL primary key,
  user_name varchar(255),
  description varchar(255),
  url  text
);
