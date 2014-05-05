require 'pg'

@conn = PG.connect(dbname: 'students_db')

# INSERT INTO students (first_name, last_name, birthdate) VALUES ();

def add_student(first,last,birthdate)

  @conn.exec("INSERT INTO students (first_name, last_name, birthdae) VALUES ('#{first}','#{last}','#{birthdate}'');")
end
