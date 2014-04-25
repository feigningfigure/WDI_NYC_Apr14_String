
class Student


	attr_accessor :name, :bag, :dollars, :table
	#is a MACRO (creates a getter and a setter)
	# ITS CODE THAT WRITES OTHER CODE FOR YOU!

	attr_reader :balance
	#I can see what's in the symbol
	# but not change it (useful)

	attr_writer 
	#I can change the symbol
	# but not see what is in it (not often useful)


	def initialize(initial_name=nil) # means '.new'
		# REMEMBER TO THINK OF what is important to your object upon creation?
		# if it is not IMPORTANT, do not add it
		puts "I was created!"
		@name = initial_name
		@bag = Array.new
		@bag << Notebook.new
		@balance = 100
		@dollars = []
	end

	def get_dollars(number_of_desired_dollars)
		number_of_desired_dollars.times do
			@dollars << Dollars.new
		end
		@balance += @dollars.length
		puts "You have #{@balance} dollars"
	end

	def find_ingredients_for_sandwich
		@bag << Bread.new
		@bag << Jelly.new
		@bag << Peanut_Butter.new
	end

	def make_table
		@table = Table.new
	end

	def put_things_on_table(*number)
		@table << @bag[number]
		@bag[number].pop
	end

	def slice_bread
		@bag[1].sliced = true
	end

# Commented out because attr_accessor makes these unnecessary

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

