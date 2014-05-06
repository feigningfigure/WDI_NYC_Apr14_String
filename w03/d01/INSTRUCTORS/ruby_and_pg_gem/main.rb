require 'pg'
require 'faker'

@conn = PG.connect(dbname: 'students_db')

# INSERT INTO students (first_name, last_name, birthdate) VALUES ();

def add_student(first_name, last_name, birthdate)
	@conn.exec("INSERT INTO students (first_name, last_name, birthdate) VALUES ('#{first_name}', '#{last_name}', '#{birthdate}');")
end

# SELECT * FROM students;

def display_students
	all_students = @conn.exec("SELECT * FROM students;")
	all_students.each do |student|
		student.each do |k, v|
			puts "#{k}: #{v}"
		end
	end
end

# SELECT * FROM students WHERE first_name = '';

def search(category, query_term)
	result = @conn.exec("SELECT * FROM students WHERE #{category} = '#{query_term}';")
	result.each do |student|
		student.each do |k, v|
			puts "#{k}: #{v}"
		end		
	end
end

# UPDATE students SET first_name = '' WHERE id = '';

def update(category, query_term, id)
	@conn.exec("UPDATE students SET #{category} = '#{query_term}' WHERE id = '#{id}';")
	puts "Your record has been updated"
end

# DELETE FROM students WHERE id = '';

def delete(id)
	@conn.exec("DELETE FROM students WHERE id = '#{id}';")
	puts "Your record has been deleted"
end


def seed
	1000.times do
		add_student(Faker::Name.first_name, Faker::Name.last_name, "#{rand(1..12)}/#{rand(1..28)}/#{rand(50..99)}")
	end
end




