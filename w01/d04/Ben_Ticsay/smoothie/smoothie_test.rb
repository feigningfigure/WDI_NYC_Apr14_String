require 'pry'

smoothie_ingredients = {
  'flax seeds' => '1 tbsp',
  'chia seeds' => '1 tbsp',
  'coconut flakes' => '1 tbsp',
  'spirulina' => '1 tsp',
  'pumpkin seeds' => '1 tbsp',
  'oatmeal' => '1/4 cup',
  'coco powder' => '1 tbsp',
  'peanut butter' => '1 tbsp',
  'almonds' => '1/4 cup',
  'walnuts' => '1/4 cup',
  'spinach' => '1/4 cup',
  'greek yogurt' => '1/4 cup',
  'nutrional yeast' => '1 tbsp',
  'brussel sprouts' => '1/4 cup',
  'asparagus' => '1/4 cup',
  'kale' => '1/4 cup',
  'brocoli rabe' => '1/4 cup',
  'blue berries' => '1/4 cup',
  'chopped banana' => '1/2 cup',
  'straw berries' => '1/4 cup',
  'mango' => '1/4 cup',
  'hemp milk' => '1 cup'
}

def blend(smoothie_ingredients)
	x = []
	smoothie_ingredients.each do |k, v|
		x << k
	end
return x
end

puts blend(smoothie_ingredients).join.gsub(' ', '')


# x.each {|k| k.join}
	# x.split('').shuffle(s.length()).join



# 	puts "Enter smoothie ingredients:"
# 	smoothie_ingredients = gets.chomp.gsub(' ', '')
# end	

# puts input_ingredients

# def blend(smoothie_ingredients)
# 	smoothie_ingredients.scramble
# end

# puts blend(smoothie_ingredients)
# return smoothie_ingredients
# end


# class Blender



# end