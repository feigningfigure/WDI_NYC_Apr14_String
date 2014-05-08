
#in pqsl --> Create amazon_e_store database --> items table -->
#CREATE DATABASE amazon_e_store;

CREATE TABLE items
  (id serial NOT NULL primary key,
  name varchar(255),
  price decimal(5,2),
  description text,
  quantity smallint,
  created_at timestamp
  );



