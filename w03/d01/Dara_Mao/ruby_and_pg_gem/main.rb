require 'pg'

@conn = PG.connect(dbname: 'students_db')
#in pry, load "./main.rb"

# Writing part: INSERT INTO students (first_name, last_name, birthdate) VALUES ();
def add_student(first_name, last_name,birthdate)
  @conn.exec("INSERT INTO students (first_name, last_name, birthdate) VALUES ('#{first_name}', '#{last_name}', '#{birthdate}');")
end

#Read file part: SELECT * FROM students;
def display_students
  all_students = @conn.exec("SELECT * FROM students;")
  all_students.each do | student|
    student.each do |k,v|
      puts "#{k}: #{v}"
    end
  end
end

#in pry, all_students.methods (to see all the methods for the function)

#See if the student exist in the database SELECT * FROM students WHERE first_name = 'Neel';
def search(first_name)
  result = @conn.exec("SELECT * FROM students WHERE first_name = '#{first_name}';")
  result.each do |student|
   student.each do |k,v|
    puts "#{k}: #{v}"
  end
end
end

#V2 Search for all categories:
def search(category, query_term)
  result = @conn.exec("SELECT * FROM students WHERE #{category} = '#{query_term}';")
  result.each do |student|
   student.each do |k,v|
    puts "#{k}: #{v}"
  end
end
end


#Update database part: UPDATE students SET first_name = '' WHERE id = ''; (where I want to change at , and what I want to change to)
def update(first_name, id)
  @conn.exec("UPDATE students SET first_name = '#{first_name}' WHERE id = '#{id}';")
end

#Update V2 for all categories:
def update(category, query_term, id)
  @conn.exec("UPDATE students SET #{category} = '#{query_term}' WHERE id = '#{id}';")
end


#Delete part: DELETE FROM students WHERE id = ''
def delete(id)
  @conn.exec("DELETE FROM students WHERE id = '#{id}';")
end



