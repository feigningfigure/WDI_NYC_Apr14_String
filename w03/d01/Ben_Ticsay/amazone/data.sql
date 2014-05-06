CREATE TABLE products
(
id serial NOT NULL primary key, 
name varchar(255),
price decimal(5,2),
description text,
quantity integer
);


UPDATE table1 
   SET col1 = othertable.col2,
       col2 = othertable.col3 
  FROM othertable 
 WHERE othertable.col1 = 123;