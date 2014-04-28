class Group

	attr_accessor :students

	def initialize
		@students = []
	end

	def add_students(addition)
		@students << addition
	end
end
