
CREATE TABLE items
(
id serial NOT NULL primary key,
name varchar(255),
create_at date,
price DECIMAL(1000,0),
description text,
quantity int,
);
