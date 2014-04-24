
class Student


	attr_accessor :name #is a MACRO (creates a getter and a setter)
	# ITS CODE THAT WRITES OTHER CODE FOR YOU!

	def initialize(initial_name=nil) # means '.new'
		puts "I was created!"
		@name = initial_name
	end

	#getter method
	# def name_getter
	# 	#an 'instance' variable
	# 	# they must begin with @
	# 	@name
	# end
	# # setter method re-writes an instance variable
	# def name_setter(new_name)
	# 	@name = new_name
	# end

	# def name=(new_name) #this totally works!
	# 	@name = new_name
	# end

	# def +(other_name) #this is also crazy cool!
	# 	@name + other_name
	# end

	def shout(word)
		puts word.upcase
	end

end

