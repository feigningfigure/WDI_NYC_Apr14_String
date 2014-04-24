# Instructors for the quiz are written inline.
require 'pry'
require 'rainbow/ext/string'

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


test_hash = {
  'ooooo' => '1/2 cup',
  'bbbbb' => '1 cup'
}

def create_load_of_ingredients(ingredients_hash)
load_of_ingredients = []
  ingredients_hash.each do |k,v|
    load_of_ingredients << k
  end
  return load_of_ingredients
end

def quick_shuffle(string)
  string.split("").shuffle.join
end

# Write a function called blend.
# It should take all the smoothie ingredients (not the measurements) and chop up and mix all the characters
# and output a mixed string of characters
# Be sure to remove the spaces, as we don't want any air bubbles in our smoothie!

def blend(smoothie_ingredients)
  items_to_blend = create_load_of_ingredients(smoothie_ingredients)
  blended_items = []
  items_to_blend.each do |item|
    current_color = quick_shuffle('B0171F')
    item .split(//).each do |letter|
      blended_items<< letter.color(current_color)
    end
  end
  puts blended_items.shuffle.join.gsub(/\s+/, "")
end

# blend(smoothie_ingredients)
blend(test_hash)

# this works

# colorized = []



# new_color = quick_shuffle('B0171F')
# "bbb".split(//).each do |letter| colorized << letter.color(new_color) end

# new_color =quick_shuffle('B0171F')
# "bbb".split(//).each do |letter| colorized << letter.color(new_color) end

# # new_color =quick_shuffle('B0171F')
# # "ccc".split(//).each do |letter| colorized << letter.color(new_color) end

# # puts colorized.shuffle.join.gsub(/\s+/, "")

# "bbb".split(//).each do |letter| colorized << letter.color('B0171F') end


# create a class called Blender
# It should have a method that takes an -- array of ingredients -- and returns -- a mixed string of characters --.
# Give the blender an on and off switch and only allow the blender to function when it's on.
# FOR SAFETY'S SAKE When you create a new blender by default it should be off.
# Blend the the smoothie array

class Blender
end

# Move on to gluten_free.rb



# puts hawt.join.color('43CD80')

# def create_load_of_ingredients(ingredients_hash)
# load_of_ingredients = []
#   ingredients_hash.each do |k,v|
#     load_of_ingredients << k
#   end
#   return load_of_ingredients
# end
