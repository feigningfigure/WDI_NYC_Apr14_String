class Student

	#is a macro tjat creates getter/setter
	#code that write other code
	#coding convention attr_accessor is placed first
	attr_accessor :name, :bag

	#'initialize' method determines the code that will run when .new is called
	#'parameter' variable
	#coding convention 'initialize' method is placed second if it's being used in the class
	def initialize(initial_name=nil)
		#what's important to your object upon its creation?
		puts "I was created!"
		@name = initial_name
		#if this line is required, instance can be halted, define only what's important at the very beginning
		#'=nil' lets the student be created without a name, one approach, another is to not put this line in altogether
		@bag = []
		#require that the bag should be an array upon completion
	end

	#'getter' method
	def name_getter
		#an 'instance' variable, must begin with @
		@name
	end

	#sometimes you also need a 'setter' method that rewrites te instance variable
	# def name_setter(new_name)
	# 	@name = new_name
	# end

	#another 'setter' method
	#parentheses are purely decorative, just use equal sign and spaces
	# def name=(new_name)
	# @name = new_name 
	# end
		
	def shout(word)
		puts word.upcase
	end

end
