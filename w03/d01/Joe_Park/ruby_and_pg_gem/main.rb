require 'pg'

@conn = PG.connect(dbname: 'students_db')

INSERT INTO students_db (first_name, last_name, birthdate) VALUES ();

