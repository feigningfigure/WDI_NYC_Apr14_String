CREATE TABLE products
(
id serial NOT NULL primary key,
name varchar(255),
price decimal,
description text,
quantity integer
);