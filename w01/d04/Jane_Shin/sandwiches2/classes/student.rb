class Student

	#is a macro that creates getter/setter
	#code that write other code
	#coding convention attr_accessor is placed first
	attr_accessor :name, :bag, :dollar

	#I can see what's in the bag but not change it
	attr_reader :balance

	#you can cange the bag

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
		@balance = 100
		@dollar = []
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

	#make loop to add dollars
	#loop the number of desired_dollars to the Dollar class that creates instances and adds them to the to the @dollars array
	def add_dollar(number_of_desired_dollar)
		number_of_desired_dollar.times do
			@dollars << Dollar.new
		end
		puts "you have #{@dollars.length} dollars."
		#should return something here
	end

	#method for bread sliced in bag
	# def slice_bread
	# 	@bag[1].sliced = true
	# end

	#method for slicing bread on the table's surface
	def slice_bread
		@table.surface[0].sliced = true
	end

	def assemble_table
		@table = Table.new
	end
		
	def move_bag_contents_to_table
		#this will prevent the edge-case of a student without table and bag 
		#return nill unless @table && @bag
		#using @ calls the instance
		@table.surface = @bag.select do |item|
	item.class != Notebook
	end
		@bag = @bag - @table.surface
	end
	
	def make_sandwich
		
	end

end
