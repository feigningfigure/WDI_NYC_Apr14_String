class Blender

	attr_accessor :name, :blender_cup, :on

	def initialize(name)
		@name = name
		@blender_cup = Array.new
		@on = false
	end



	def blend(smoothie_ingredients)
		# binding.pry
		if @on == true
			smoothie_ingredients.each do |ingredients, measure|
				@blender_cup << ingredients.gsub(' ', '').split('')
			end

			smoothie = blender_cup.flatten.shuffle.join('')
			puts smoothie
			return smoothie
		else
			puts "Power is off."
		end
	end

	def power_switch
		if @on == false
			@on = true
			puts "Power! "
		else
			@on == false
		end
	end
end



