CREATE TABLE acme_shop
(
id serial NOT NULL primary key,
name varchar(255),
price DECIMAL(1000,0),
description text,
quantity int
);
