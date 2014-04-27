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

smoothie_ingredients.each { |ingredient, amount| betsy.add(ingredient) }
betsy.ingredients1 = betsy.ingredients

def color_ingredients(ingredients)
collection = []
collection << color_the_ingredient("red",ingredients[19])
collection << color_the_ingredient("blue",ingredients[3])
collection << color_the_ingredient("cyan",ingredients[1])
collection << color_the_ingredient("white",ingredients[0],ingredients[21],ingredients[2],ingredients[8],ingredients[9],ingredients[11])
collection << color_the_ingredient("yellow",ingredients[20],ingredients[5],ingredients[7],ingredients[12],ingredients[4],ingredients[18])
collection << color_the_ingredient("green",ingredients[16],ingredients[13],ingredients[14],ingredients[6],ingredients[10])
collection << color_the_ingredient("magenta",ingredients[15],ingredients[17])
collection.flatten
end

betsy.ingredients = color_ingredients(betsy.ingredients)
betsy.chopped_ingredients = color_ingredients(betsy.chopped_ingredients)

betsy.blend
betsy.turn_on_blender
betsy.blend
betsy.turn_off_blender

# Write a function called blend.
# It should take all the smoothie ingredients (not the measurements) and chop up and mix all the characters
# and output a mixed string of characters
# Be sure to remove the spaces, as we don't want any air bubbles in our smoothie!

