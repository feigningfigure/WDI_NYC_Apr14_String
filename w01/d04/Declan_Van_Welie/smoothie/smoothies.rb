# require pry
require 'rainbow/ext/string'
# class
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

#   def mix_char(x)
#     all_ingredients = []
#     for x.each do |ingredient, measurement|
#       all_ingredients << "#{ingredient}"
#       return all_ingredients
#     end
#   end

# mix_char(smoothie_ingredients)

  def on_off(switch)
    if switch == "on"
      "You've turned the blender on."
      p mixed
    end
  end
 # on_off(switch)
 puts "The blender is off, would you like to turn it on? Please type either 'on' or 'off"
    switch = gets.chomp

def blend(smoothie_ingredients)
  everything = []
  smoothie_ingredients.each do |item, measure|
    everything << item.scan(/./).shuffle!
      end
       everything = everything.join("").gsub(/\p{Space}/,'')
      return everything
end
mixed = blend(smoothie_ingredients)
p mixed


# def blend


# = smoothie_ingredients.keys


# end
