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


# create a class called Blender
# It should have a method that takes an
# -- array of ingredients --
# and returns
# -- a mixed string of characters --.
# Give the blender an on and off switch and only allow the blender to function when it's on.
# FOR SAFETY'S SAKE When you create a new blender by default it should be off.
# Blend the the smoothie array

class Blender

  def initialize(initial_power="off")
    @power = initial_power
  end

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

  def on
    @power = "on"
    puts "blender on"
  end

   def off
    @power = "off"
    puts "blender off"
  end

  def blend(smoothie_ingredients)
  unless @power == "on"
    puts "Please turn on the blender!"
    return nil
  end
  puts "Blending"
  items_to_blend = create_load_of_ingredients(smoothie_ingredients)
  blended_items = []
  items_to_blend.each do |item|
    current_color = quick_shuffle('B0171F')
    item .split(//).each do |letter|
      blended_items<< letter.color(current_color)
    end
  end
  puts blended_items.shuffle.join.gsub(/\s+/, "")
  puts "Here is your concoction. Yum!"
  end

  def guide
    ingredient_choices = Hash.new { |hash, key| hash[key] = "1/2 cup" }
    puts "What would you like to blend (comma separated por favor)?"
    user_picks = gets.chomp.gsub(/\s+/, "").split(",")
      user_picks.each do |item|
        ingredient_choices[item]
      end
    if @power == "off"
      puts "The blender is off. Would you like to turn it on (off OR on)?"
      want_to_use = gets.chomp
      if want_to_use == "off"
        puts "Come back when you're ready to use the blender!"
        return nil
      else want_to_use == "on"
        @power = "on"
      end
    end
    blend(ingredient_choices)
  end

end

George = Blender.new
George.guide
