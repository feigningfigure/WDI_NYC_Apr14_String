CREATE TABLE items
(
  id  serial NOT NULL primary key,
  name varchar(255),
  price decimal,
  description text,
  quantity int,
  created_at timestamp
);

#| id | name | price | description | quantity | created_at
|----|-----|------|----|----| | serial | varchar(255) | decimal | text | integer |timestamp
