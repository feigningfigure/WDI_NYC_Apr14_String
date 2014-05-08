-- "schema" is the SQL code required to 'build' your database tables, etc.

CREATE TABLE items
(
  item_id  serial NOT NULL primary key,
  item_name varchar(255),
  item_price decimal,
  item_description  text,
  item_quantity_in_inventory integer,
  item_creation_timestamp timestamp
);
