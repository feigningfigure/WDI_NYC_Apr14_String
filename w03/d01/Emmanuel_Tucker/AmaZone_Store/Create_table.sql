
-- CREATE TABLE amazon_da_store
CREATE TABLE da_schema
(
id serial NOT NULL primary key,
product_name varchar(255),
price DECIMAL(1000,0),
description text,
quantity int
);
