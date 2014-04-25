require 'pry'


puts "Enter smoothie ingredients:"
smoothie_ingredients = gets.chomp.gsub(' ', '').gsub(",","")

def blend(smoothie_ingredients)
smoothie_ingredients.split("").shuffle.join
end

puts blend(smoothie_ingredients)



class Blender
	def blender_on(ingredient_array)

	end
end