

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

def search(input)
result = @conn.exec("SELECT * FROM students WHERE first_name = '#{input}' OR last_name = #{input}';");
  puts student
  result.each do |student|
    puts "#{k}: #{v}"
  end
end
