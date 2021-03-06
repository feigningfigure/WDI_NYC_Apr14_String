# Instructors for the quiz are written inline.
# require 'pry'

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

    
    def convert_hash_keys_to_array(hash)
      x = []
      hash.each do |k, v|
         x << k 
      end
      return x
    end

    mash_up_string = convert_hash_keys_to_array(smoothie_ingredients).join('')

    mash_up_array = mash_up_string.split('')

    shuffle_result_array = mash_up_array.shuffle

    def remove_white_space(x)
      no_blanks = []
      x.each do |value|
        unless value == " " 
          no_blanks << value
        end
      end
      return no_blanks  
    end


    # puts shuffle_result_string = remove_white_space(shuffle_result_array).join('')

# create a class called Blender
# It should have a method that takes an array of ingredients and returns a mixed string of characters.
# Give the blender an on and off switch and only allow the blender to function when it's on.
# FOR SAFETY'S SAKE When you create a new blender by default it should be off.
# Blend the the smoothie array

class Blender

  attr_reader :smoothie_ingredients 
  attr_accessor :switch

  def initialize 
    @smoothie_ingredients = []
    @switch = false
  end

  def convert_hash_keys_to_array(hash)
    x = []
    hash.each do |k, v|
       x << k 
    end
    return x
  end

  def blend(ingredients_array)

    @smoothie_ingredients = ingredients_array

    shuffled_array = @smoothie_ingredients.join('').split('').shuffle

    def remove_white_space(x)
      no_blanks = []
      x.each do |value|
        unless value == " " 
          no_blanks << value
        end
      end
      return no_blanks  
    end

    if switch
    return remove_white_space(shuffled_array).join('')
    else
    return "The blender is off. Please turn blender on before blending."
    end

  end


end

blend_1 = Blender.new
blend_1.switch = true
puts blend_1.blend(["peanut butter", "sugar", "apples"])


# Move on to gluten_free.rb