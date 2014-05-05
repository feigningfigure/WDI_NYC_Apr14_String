# require the gem to interact with psql
require 'pg'

# connect to database using method 'connect'
@conn = PG.connect(dbname: 'students_db')

# INSERT INTO students (first_name, last_name, birthdate) VALUES ();

# pass instructions to psql using .exec method and always using double quotes
def add_student(first_name, last_name, birthdate)
  @conn.exec("INSERT INTO students (first_name, last_name, birthdate) VALUES ('#{first_name}', '#{last_name}', '#{birthdate}');")
end
