require 'pg'

@conn = PG.connect(dbname: 'students_db')

def add_student(first_name, last_name, birthdate)
  @conn.exec("INSERT INTO students (first_name, last_name, birthdate) VALUES ('#{first_name}', '#{last_name}', '#{birthdate}');")
end

def display_students
  all_students = @conn.exec("SELECT * FROM students;")
  all_students.each do |student|
    student.each do |k,v|
      puts "#{k}: #{v}"
    end
  end
end

def search(category, query_term)
  result = @conn.exec("SELECT * FROM students WHERE #{category} = '#{query_term}';")
  result.each do |student|
    student.each do |k,v|
      puts "#{k}: #{v}"
    end
  end
end

def update(category, query_term, id)
  @conn.exec("UPDATE students SET '#{category}' = '#{query_term}' WHERE id = '#{id}';")
  puts "Your record has been updated."
end

def delete(id)
  @conn.exec("DELETE FROM students WHERE id = '#{id}';")
  puts "Your record has been deleted."
end



