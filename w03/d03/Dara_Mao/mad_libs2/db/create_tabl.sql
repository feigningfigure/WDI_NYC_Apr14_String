CREATE TABLE images
(
  id serial NOT NULL primary key,
  title varchar(255),
  description smallint,
  url varchar(255),
  image_location smallint
);
