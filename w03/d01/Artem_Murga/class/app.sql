reqire 'pg'


@conn = PG.connect(dbname: 'students_db')


def add_student (first_name, last_name, birthdate)
	@conn.exec("INSERT INTO students (first_name, last_name, birthdate) VALUES (#{first_name}, #{last_name}, #{birthdate});")
end
