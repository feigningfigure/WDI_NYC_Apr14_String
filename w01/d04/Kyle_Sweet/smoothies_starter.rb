
require 'rainbow'


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

end

def new_ingredients
    new_ingredients = Array.new(smoothie_ingredients.to_a.flatten)
end

def new_ingredients2
  new_ingredients2=[]
    new_ingredients.each_with_index do |item, index|
      if (index %2 ==0) then
        new_ingredients2.push(item)
      end
    end
  end


def blender
 print "Would you like to turn the Blender on?"
 power=gets.chomp
 if power == "yes"
  puts blend
else puts "Well you need your vegetables..."
end

new_ingredients
new_ingredients2
print "Here is a list of ingredients: #{new_ingredients2}"

blender
blend

end

