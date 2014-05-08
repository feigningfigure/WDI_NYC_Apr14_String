CREATE DATABASE amazon_e_store;

CREATE TABLE items (
id serial NOT NULL primary key,
name varchar(255),
price decimal,
description text,
quantity integer,
created_at timestamp default current_timestamp
);
