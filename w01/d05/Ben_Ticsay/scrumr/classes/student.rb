class Student
	attr_accessor :name

	def initialize(student_hash)
		@name = $students["Name"]
	end

	def to_s
		"My name is #{@name}"
	end
end