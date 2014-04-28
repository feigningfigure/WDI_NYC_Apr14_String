class Student

	attr_accessor :name, :email, :github

	def initialize(student_hash)
		@name = student_hash["Name"]
		@email = student_hash["Email"]
		@github = student_hash["GitHub"]
	end

	def to_string
		"This student is #{self.name}.\n#{self.name}'s email: #{@email}\n#{@name}'s GitHub name: #{@github}"
	end

end

