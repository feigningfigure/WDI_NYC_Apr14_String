CREATE TABLE products
(
id serial NOT NULL primary key,
name varchar(255),
price money,
description varchar(255),
quantity int
);
