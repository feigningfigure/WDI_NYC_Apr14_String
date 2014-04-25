require 'pry'
require 'rainbow/ext/string'
# I think something is broken with my terminal color display it's showing ANSI characters even in PRY
# Can't fix it :(

smoothie_ingredients = {
  'flax seeds'.color(:blue) => '1 tbsp',      #example of how I think this should be colored
  'chia seeds'.color('00FFFF') => '1 tbsp',
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

#defining blender class starts
class Blender

attr_accessor :active

def initialize(active=false)
  @active = active
  puts "You've got a new blender!"
  puts "Don't forget to turn it on!"
end

#the blender function code starts
def blend(x)
  everything = []
  x.each do |item, measure|
    everything << item
      end
 everything= everything.join.delete(" ").split("").shuffle.join.to_s
 everything.is_a? String
  if @active == false
    puts "DON'T FORGET TO TURN ON YOUR BLENDER!"
  else
    puts "Your delicious smoothie:"
    puts everything
  end
end
# the blender function code ends

def turn_on_blender
    @active = true
end

def turn_off_blender
  @active = false
end

end
# defining blender class ends

newblender = Blender.new
newblender.turn_on_blender
newblender.blend(smoothie_ingredients)
