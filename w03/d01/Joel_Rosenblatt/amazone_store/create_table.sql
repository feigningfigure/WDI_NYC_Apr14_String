CREATE DATABASE products_db

CREATE TABLE products
(
id serial NOT NULL primary key,
name varchar(255),
price decimal(18,4),
description text,
quantity int
);
