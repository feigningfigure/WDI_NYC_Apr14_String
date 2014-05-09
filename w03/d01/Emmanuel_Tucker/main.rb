require 'pg'
require 'faker'
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

#SELECT * FROM student;
def display_students
all_students = @conn.exec("SELECT * FROM students;")
all_students.each do |students|
      student.each do |k, v|
          puts "#{k}: #{v}"
          #
     #when you want to execute a sql command use .exec
     #pass thru a string ("")


          end
     end
end

# SELECT * FROM students WHERE first_name = '';
#finds partically student name
# * = all instead of just one

 def search(category, query_term)
result = @conn.exec("SELECT * FROM students WHERE #{category} ='#{query_term}';")
#search by first name
result.each do |student|
     student.each do |k, v|
          puts "#{k}: #{v}"
           end
      end

end

#UPDATE students SET first_name = '' WHERE id = '';

#puts is like syntax sugar for getting the to_s method
def update(category, query_term, id)

@conn.exec = ("UPDATE students SET first_name = '#{category}' WHERE id = '#{query_term}';")

end

# DELETE FROM students  WHERE id = ''


def delete(id)
     @conn.exec("DELETE FROM students WHERE id = '#{id}';")

     end



1000.times do add_student(Faker::Name.first_name::Name, last_name, Faker) "#{(rand..12)}/#{rand(1..28)}/#{rand(50..99)}"
end


