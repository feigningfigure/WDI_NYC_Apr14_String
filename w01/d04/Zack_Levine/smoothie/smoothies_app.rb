# Instructors for the quiz are written inline.
require 'pry'

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

def blend(smoothie_ingredients)
  list_of_foods = smoothie_ingredients.keys #array


  jumble = list_of_foods.shuffle #after and b4

  puts " "
  puts "hey dude herez the jumbleded list #{jumble}" #shows the jumb

  strip_spaces = jumble.join.delete(" ")

  puts "hey dude no spacez here #{strip_spaces}"

  each_letter_bruk_down = strip_spaces.split("") # b. r. e. a.k .s .d.o.w.n.

  puts " "
  puts " "
  puts "now each letter is completlely its own array #{each_letter_bruk_down.shuffle}"

  letters_mashed_back_up = each_letter_bruk_down.shuffle.join
  puts " "
  puts " "
  puts "now they all join back 2gethur"
  puts "$tada$$$$$"
  puts "#{letters_mashed_back_up}"

  # Write a function called blend.
  # It should take all the smoothie ingredients (not the measurements) and chop up and mix all the characters
  # and output a mixed string of characters
  # Be sure to remove the spaces, as we don't want any air bubbles in our smoothie!

end

blend(smoothie_ingredients)

# create a class called Blender
# It should have a method that takes an array of ingredients and returns a mixed string of characters.
# Give the blender an on and off switch and only allow the blender to function when it's on.
# FOR SAFETY'S SAKE When you create a new blender by default it should be off.
# Blend the the smoothie array

class Blender
  puts "Press P to plug in the blender" 
  gets.chomp
      
  puts "Press >>>S<<<< to start blending"
end

# Move on to gluten_free.rb
