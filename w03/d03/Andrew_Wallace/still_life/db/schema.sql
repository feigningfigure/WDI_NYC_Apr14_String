CREATE TABLE photos
(
id serial NOT NULL primary key,
title varchar(255),
description text,
url text,
created_at timestamp
);