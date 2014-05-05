CREATE TABLE products
(
  id serial NOT NULL primary key,
  prod_name varchar(255),
  price double precision,
  description text,
  quantity integer
);
