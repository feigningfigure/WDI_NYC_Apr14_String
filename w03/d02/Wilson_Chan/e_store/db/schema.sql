# 'schema'=> SQL code required to build db tables, etc

CREATE TABLE posts
(
  id serial NOT NULL primary key,
  name varchar(255),
  price money,
  description text,
  quantity int,
  created_at timestamp
)
