class Student


	#this is a 'macro' that creates getter/setter methods
	attr_accessor :name

	# 'initialize' method determines
	# the code that will run when .new
	# is called
	# initialize MEANS .new
	def initialize(initial_name=nil)
		# what's important to your object
		# upon its creation?
		puts "I was created!"
		@name = initial_name
		@bag = []
	end


	#'getter' method
	def name_getter
		# an 'instance' variable.
		# they must being with @
		@name
	end

	# 'setter' method re-writes an instance variable
	def name_setter(new_name)
		@name = new_name

	end

	# def name=(new_name)
	# 	@name = new_name
	# end


	def shout(word)
		puts word.upcase
	end

end