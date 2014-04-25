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


user_ingredients = ["carrot", "potato", "kale", "hot pocket"]

class Blender

  def initialize()
    @powered = false
  end

  def power_on()
    @powered = true
  end

  def power_off()
    @powered = false
  end

  def power_switch
    case @powered
    when true
      powered = false
    when false
      powered = true
    end
  end

  def blendHash(smoothie_ingredients)
    #check for power
    if @powered == false
      return
    else

    giant_string = ""
    smoothie_ingredients.each {
      |ingredient, measurement|
      giant_string << ingredient
    }
    giant_string.gsub(" ","").split(//).shuffle.join
    end
  end

  def blendArray(user_ingredients)
     #check for power
     if @powered == false
      return
      else

    giant_string = ""
    user_ingredients.each {
      |ingredients|
      giant_string << ingredients
    }
    giant_string.gsub(" ","").split(//).shuffle.join
     end
  end

end

vitamix = Blender.new()

vitamix.power_off
p vitamix.blendArray(user_ingredients)

