CREATE TABLE amazone
(
id serial NOT NULL primary key,
product varchar(255),
price money,
description varchar(255),
quantity int
);
