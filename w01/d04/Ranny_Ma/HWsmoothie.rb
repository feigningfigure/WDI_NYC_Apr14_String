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

# Write a function called blend.
# It should take all the smoothie ingredients (not the measurements) and chop up and mix all the characters
# and output a mixed string of characters
# Be sure to remove the spaces, as we don't want any air bubbles in our smoothie!

def blend(smoothie_ingredients)
  array = []
  array = smoothie_ingredients.keys
  string = array.join.delete(" ")
  string = string.split("").shuffle
  string = string.join.delete(" ")
  string.to_s
  p string
  # p string.length

  # p string
  # p array2
  # array2.to_s
  # array2.shuffle
  #array.each {|x| x.gsub /\s+/, ''}
  #combine the strings
  #mix the strings together
end
#blend(smoothie_ingredients)
# create a class called Blender
# It should have a method that takes an array of ingredients and returns a mixed string of characters.
# Give the blender an on and off switch and only allow the blender to function when it's on.
# FOR SAFETY'S SAKE When you create a new blender by default it should be off.
# Blend the the smoothie array

class Blender
#allows you to alter the state of the blender
attr_accessor :power
#the blender needs a way to recognize ingredients
  def initialize(smoothie_ingredients)
    @smoothie_ingredients = smoothie_ingredients
    # initial state of blender is off becasue of false
    @power = false
  end
#only problem is that the blender will always evaluate to ON because of the else statement
  def blender_power
    if @power == true
      @power = false
      puts "The blender is now off"
    else
      @power = true
      blend
      exec('say The Power Is ON. now blending')
    end
  end

  def blend
      array = []
      array = @smoothie_ingredients.keys
      string = array.join.delete(" ")
      string = string.split("").shuffle
      string = string.join.delete(" ")
      string.to_s
      p string
  #   else
  #     blender_power(power)
  # end
end
end
#creating a new instance of the blender class, along with the ingredients
newblender = Blender.new(smoothie_ingredients)
#calling blender power
newblender.blender_power



#newblender.power = false
#newblender.blender_power(power)
#newblender.blend(smoothie_ingredients)

# Move on to gluten_free.rb
