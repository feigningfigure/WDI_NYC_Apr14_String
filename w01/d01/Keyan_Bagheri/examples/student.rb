class Student

	# .new
	def initialize
		@bag = ["bread"]
	end


	def find(ingredient)
		#go through process of locating ingredient
		puts "Running around"
		add_to_bag(ingredient)
		return "#{ingredient} found"
	end

	def bag
		#@bag same as self.bag
		return @bag
	end

	#this is a method
		@bag.push(ingredient) unless @bag.include? ingredient
	def add_to_bag(ingredient)
	end

	#this is a method
	def learn

	end

	def close_up(bread)
		#stuff happens
		return Sandwich.new(bread)
	end


end