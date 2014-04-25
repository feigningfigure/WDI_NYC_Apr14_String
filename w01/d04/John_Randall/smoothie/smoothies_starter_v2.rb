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



smoothie_ingredients_array = ["fruit", "soup", "almonds", "hemp milk"]




# Write a function called blend.
# It should take all the smoothie ingredients (not the measurements) and chop up and mix all the characters
# and output a mixed string of characters
# Be sure to remove the spaces, as we don't want any air bubbles in our smoothie!





# create a class called Blender
# It should have a method that takes an array of ingredients and returns a mixed string of characters.
# Give the blender an on and off switch and only allow the blender to function when it's on.
# FOR SAFETY'S SAKE When you create a new blender by default it should be off.
# Blend the the smoothie array



class Blender
  
  def initialize()
    @powered = false
  end

  ####### BLENDER POWER 
  def power_on()
    @powered = true
  end

  def power_off()
    @powered = false
  end

  def power_toggle
    case @powered
    when true 
       @powered = false
    when false 
       @powered = true
    end
  end


  ########### BLEND
  def blend(hash_or_array_of_ingredients)                                       #No Color Yet

    # check for power
    if @powered == false
      return
    end

    # Process hash into string or array into string
    if hash_or_array_of_ingredients.class == Hash
      giant_string = hash_keys_into_string(hash_or_array_of_ingredients)
    elsif hash_or_array_of_ingredients.class == Array
      giant_string = array_into_string(hash_or_array_of_ingredients)
    else
      puts "ERROR: hashes or arrays only"
    end
    
    #clean up and shuffle
    giant_string = remove_spaces_from_string(giant_string)
    giant_string = shuffle_string(giant_string)
    
    return giant_string
  end 

  # def blend_hash(hash_of_ingredients)
  #   giant_string = hash_keys_into_string(hash_of_ingredients)
  #   giant_string = shuffle_string(giant_string)
  #   giant_string = remove_spaces_from_string(giant_string)
  #   return giant_string
  # end

  # def blend_array(array_of_ingredients)
  #   giant_string = array_into_string(array_of_ingredients)
  #   giant_string = shuffle_string(giant_string)
  #   giant_string = remove_spaces_from_string(giant_string)
  #   return giant_string
  # end
  

  def hash_keys_into_string(hash_of_ingredients)
    #recieves hash, returns string of characters
      giant_string = ""
      hash_of_ingredients.each {
        |ingredient, measurement|
        giant_string << ingredient
      }
      return giant_string.delete!(" ")
  end


  def array_into_string(array_of_ingredients)
    giant_string = ""
    array_of_ingredients.each {
      |ingredient|
      giant_string << ingredient
    }
    return giant_string
  end


  def remove_spaces_from_string(string)
    # WARNING - delete method can return NIL. WTF!?
    # if string.include?(" ") == true
    #   return string.delete!(" ")
    # else
    #   return string
    # end
    return string.gsub(" ","")
  end


  def shuffle_string(string)
    return string.split(//).shuffle.join
  end
end




#TEST MY BLENDER
blender001 = Blender.new()
#blender001.power_on()
puts blender001.blend(smoothie_ingredients)

