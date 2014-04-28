

class Blender
	attr_accessor :is_on


	def initialize(initial_name=nil)
		puts "starting smoothie"
		@name = initial_name
		@is_on = false
	end

	

	def blend(available_ingredients)
		puts "Here is your smoothie: " + available_ingredients.join().gsub(/\s+/, "").split(//).shuffle().join()
	end

end