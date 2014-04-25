require 'pry'


puts "Enter smoothie ingredients:"
smoothie_ingredients = gets.chomp.gsub(' ', '').gsub(",","")

def blend(smoothie_ingredients)
smoothie_ingredients.split("").shuffle.join
end

puts blend(smoothie_ingredients)




blender = Blender.new("off", "off")
puts blender





	# def blender_on(ingredient_array)
	# 	attr_accessor :power
	# end