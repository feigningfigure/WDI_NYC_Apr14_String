CREATE TABLE products
(
id serial NOT NULL primary key,
name varchar(255),
price decimal(5,2),
description text,
quantity integer
);


create_product('Kit Kat Bar', '2.50', 'A delicious candy bar', 1)
