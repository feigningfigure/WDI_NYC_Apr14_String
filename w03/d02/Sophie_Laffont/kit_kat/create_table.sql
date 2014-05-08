CREATE TABLE amazone
(
id serial NOT NULL primary key,
product varchar(255),
price decimal(10,2),
description text,
quantity  integer
);
