require 'rainbow/ext/string'

$smoothie_ingredients = {
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

$smoothie_ingredients_array = $smoothie_ingredients.to_a

#prints each ingredient in the array

#Make an array with the ingredients only
$ingredient_array=[]
$smoothie_ingredients_array.each do|ingredient, measure|
 $ingredient_array << ingredient
  end

# puts $ingredient_array

$each_ingredient=[]
$ingredient_array.each do |k,v|
  $each_ingredient << k
end

puts $each_ingredient

puts "this is red".color(:red) + " and " + "this on yellow bg".background(:yellow) + " and " + "even bright underlined!".underline.bright

# word = each_ingredient
# #convert letters in array of characters
# letter_array= word.chars.to_a

everything= $each_ingredient.join.delete(" ").split("").shuffle.join.to_s

p everything

# ingredient_array.each do |index, value|
#   puts value
# end

#returns the ingredients from the array

# def blend()

# end


# word = "flax seeds"
# #convert letters in array of characters
# # letter_array= word.chars.to_a
# puts letter_array.each_with_object
