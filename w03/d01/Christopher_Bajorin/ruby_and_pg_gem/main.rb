require 'pg'

@conn = PG.connect(dbname: 'students_db')

# INSERT INTO students (first_name, last_name, birthdate) VALUES ();

def add_student(first,last,birthdate)

  @conn.exec("INSERT INTO students (first_name, last_name, birthdate) VALUES ('#{first}', '#{last}', '#{birthdate}');")
end

# SELECT * FROM students;

def display_students
  all_students = @conn.exec("SELECT * FROM students;")
  all_students.each do |student|
    student.each do |k, v|
      puts "#{k}, #{v}"
    end
    puts "\n"
  end
end

# SELECT * FROM students WHERE first_name = '';

def search(first_name)
  search_results = @conn.exec("SELECT * FROM students WHERE first_name='#{first_name}';")
  search_results.each do |result|
    result.each do |k,v|
      puts "#{k}, #{v}"
    end
    puts "\n"
  end
end

# UPDATE students SET





def search(first_name = nil, last_name = nil)
  search_results = @conn.exec("SELECT * FROM students WHERE first_name='#{first_name}';")
  search_results.each do |result|
    result.each do |k,v|
      puts "#{k}, #{v}"
    end
    puts "\n"
  end
end
