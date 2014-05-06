CREATE TABLE products
(
id serial NOT NULL primary key,
name varchar(255),
price decimal(5,2),
description varchar(255),
quantity integer
);
