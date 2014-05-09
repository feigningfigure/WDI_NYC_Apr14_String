CREATE TABLE photos(id serial NOT NULL primary key,
		users varchar(255),
		title varchar(255),
		description text,
		url text);