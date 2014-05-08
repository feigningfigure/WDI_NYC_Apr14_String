CREATE TABLE items
(
  id serial NOT NULL primary key,
  title varchar(255),
  description text,
  quantity integer,
  created_at date,
);