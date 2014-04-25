require_relative 'blender'
require_relative 'shuffle'
require 'rainbow'

# docs you may enjoy
# http://www.ruby-doc.org/core-2.0/Hash.html
# http://ruby-doc.org/core-2.0/String.html
# http://ruby-doc.org/core-2.0/Array.html

# Every Morning I make a smoothie with the follow ingredients:
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
betsy = Blender.new

betsy.fill_blender_with(smoothie_ingredients)
ingredients = split_ingredients_in(betsy.ingredients)

in_blender = []

in_blender << color_the_ingredient_white(ingredients[0])
in_blender << color_the_ingredient_cyan(ingredients[1])
in_blender << color_the_ingredient_white(ingredients[2])
in_blender << color_the_ingredient_blue(ingredients[3])
in_blender << color_the_ingredient_yellow(ingredients[4])
in_blender << color_the_ingredient_yellow(ingredients[5])
in_blender << color_the_ingredient_green(ingredients[6])
in_blender << color_the_ingredient_yellow(ingredients[7])
in_blender << color_the_ingredient_white(ingredients[8])
in_blender << color_the_ingredient_white(ingredients[9])
in_blender << color_the_ingredient_green(ingredients[10])
in_blender << color_the_ingredient_white(ingredients[11])
in_blender << color_the_ingredient_yellow(ingredients[12])
in_blender << color_the_ingredient_green(ingredients[13])
in_blender << color_the_ingredient_green(ingredients[14])
in_blender << color_the_ingredient_magenta(ingredients[15])
in_blender << color_the_ingredient_green(ingredients[16])
in_blender << color_the_ingredient_magenta(ingredients[17])
in_blender << color_the_ingredient_yellow(ingredients[18])
in_blender << color_the_ingredient_red(ingredients[19])
in_blender << color_the_ingredient_yellow(ingredients[20])
in_blender << color_the_ingredient_white(ingredients[21])



betsy.blend(in_blender)
puts "..."
betsy.turn_on_blender

betsy.blend(in_blender)
puts

betsy.turn_off_blender

# Write a function called blend.
# It should take all the smoothie ingredients (not the measurements) and chop up and mix all the characters
# and output a mixed string of characters
# Be sure to remove the spaces, as we don't want any air bubbles in our smoothie!

