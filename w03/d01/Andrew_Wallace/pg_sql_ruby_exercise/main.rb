

require 'pg'

@conn = PG.connect(dbname: 'students_db')

# INSERT INTO students (first_name, last_name, birthdate) VALUES ();

def add_student(first_name, last_name, birthdate)
  @conn.exec("INSERT INTO students (first_name, last_name, birthdate) VALUES ('#{first_name}', '#{last_name}', '#{birthdate}');")
end

# SELECT * FROM students;
def display_students
  all_students = @conn.exec("SELECT * FROM students;")
  all_students.each do |students|
    student.each do |k, v|
      puts "#{k}: #{v}"
    end
  end
end

# SELECT * FROM students WHERE first_name or last_name = '';
def search(category, query_term)
result = @conn.exec("SELECT * FROM students WHERE #{category} = '#{query_term}';");
  puts student
  result.each do |student|
    puts "#{k}: #{v}"
  end
end

# UPDATE students SET first_name = '' WHERE id = '';
def update(category, querty_term, id)
  @conn.exec("SELECT * FROM students WHERE #{first_name} = '#{id}';");
end

# DELETE FROM students WHERE id = '';
def delete(id)
  @conn.exec("DELETE FROM students WHERE id = '#{id}';");
end


