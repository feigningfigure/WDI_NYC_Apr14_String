-- sql code required to build your database tables, etc


CREATE TABLE posts (
id serial NOT NULL primary key,
title varchar(255)
creation_date date
body text
author varchar(255)
)
