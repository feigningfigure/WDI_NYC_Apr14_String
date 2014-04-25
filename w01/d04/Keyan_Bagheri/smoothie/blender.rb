class Blender

	attr_accessor :is_on, :ingredients

	def initialize
		@is_on = false
		@ingredients = []
	end

	def turn_on_blender
		@is_on = true
		puts "The blender is now operational"
		system 'say The blender is now operational'
	end

	def turn_off_blender
		@is_on = false
		puts "The blender is powering down"
		system "say The blender is powering down"
	end

	def fill_blender_with(ingredients)
		@ingredients = ingredients.keys.shuffle
	end 

	def blend(smoothie_ingredients)
		if self.is_on == false
			puts "In order to operate you must first turn on the blender\n"
			system 'say In order to operate, you must first turn on the blender'
		elsif self.ingredients != []
			puts "Please insert ingredients and press start [enter] button when ready."
			system "say Please insert ingredients and press start button when ready."
			input = gets.chomp
			puts "Analyzing ingredients"
			system "say Analyzing ingredients"
			system "say ..."
			string = "1.. #{self.ingredients[0]}.. 2.. #{self.ingredients[1]}.. 3.. Is that a hint of #{self.ingredients[2]}?. 4.. #{self.ingredients[3]}.. You know what. I am just going to start now."
			puts string
			system "say #{string}"
			puts "One minute please"
			system "say One minute please"
			puts "..."
			blending = smoothie_ingredients.flatten
			blended = blending.shuffle.join
			puts "Almost finished"
			system "say Almost finished"
			print blended
			puts
			system "say ..."
			puts "Here's your freaking smoothie!"
			system "say ..."
			system "say Heres your frking smoothie!"
		end
	end
	
end
