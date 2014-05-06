CREATE TABLE students
(
id serial NOT NULL primary key,
first_name Varchar(255),
last_name Varchar(255),
birthdate date
);
#COPY AND PASTE INTO PSQL IN TERMINAL
#the command serial that it will inclement automatically
#avoid issue of student having the same number


