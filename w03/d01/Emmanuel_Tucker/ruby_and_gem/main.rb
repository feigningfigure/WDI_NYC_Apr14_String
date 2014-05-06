require 'pg'

@conn = PG.connect(dbname: 'students_db')
#method to pass to sql
#Set as a Variable to connect to the db
#everytime you want to interface with the database you can use @conn

#if we were postquote prompt how would you add a new entry
#INSERT INTO STUDENTS_db (first_name, last_name birthdate) VALUES ();
#SQL COMMAND

def add_student(first_name, last_name, birthdate)
@coon.exec("INSERT INTO STUDENTS_db (first_name, last_name birthdate) VALUES ('#{first_name}',#{last_name}','#{birthdate}');")
#when you past these in it goes thru as a string
end
#calling a method from the postq gem

# writing ruby code that generates a string of SQL code
