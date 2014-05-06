# require the gem to interact with psql
require 'pg'
require 'faker'

# connect to database using method 'connect'
@conn = PG.connect(dbname: 'students_db')

# INSERT INTO students (first_name, last_name, birthdate) VALUES ();

# pass instructions to psql using .exec method and always using double quotes
def add_student(first_name, last_name, birthdate)
  # note to self: is it valid sql command what we're passing on this parentheses?
  @conn.exec("INSERT INTO students (first_name, last_name, birthdate) VALUES ('#{first_name}', '#{last_name}', '#{birthdate}');")
end

# SELECT * FROM students;
def display_students
  # note to self: is it valid sql command what we're passing on this parentheses?
  all_students = @conn.exec("SELECT * FROM students;")
  # print all students on the table
  all_students.each do |student|
    student.each do |k, v|
      puts "#{k}: #{v}"
    end
  end
end

def search(first_name, query_term)
  result = @conn.exec("SELECT * FROM students WHERE '#{category} = '#{query_term}';")
    result.each do |student|
    student.each do |k, v|
      puts "#{k}: #{v}"
    end
end


# UPDATE students SET first_name = '' WHERE id = '';
def update(category, query_term, id)
  @conn.exec("UPDATE students SET #{category} = '#{query_term}' WHERE id '#{id}';")
end

# DELETE FROM students WHERE id = ''
def delete (id)
  @conn.exec("DELETE FROM students WHERE id = '#{id}';")
  puts "Your record has been deleted"
end

def seed
  1000.times do
    add_student(Faker::Name.first_name, Faker::Name.last_name, )
    # Faker::Date.between("01/01/2000", "02/08/2012") didn't work
    end
end

