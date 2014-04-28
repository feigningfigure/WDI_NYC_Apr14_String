require_relative 'Blender'


smoothie_ingredients = {'flax seeds' => '1 tbsp',
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
      'hemp milk' => '1 cup'}

my_blender = Blender.new


print "What would you like to blend?"
#blender_selection = []
blender_selection = gets.chomp.to_s.split(", ")




available_ingredients = []
blender_selection.each do |item|
  if smoothie_ingredients.has_key?(item)
      print "We have #{item}\n"
      available_ingredients.push(item)
  else
      print "we do not have #{item}\n"
  end
end

# GETTING BLENDER READY
puts "is the bender turned on?
blender_ready = gets.chomp.to_s

  if blender_ready == "yes"
  puts "the blender is #{blender_ready}."

  else
  puts "would you like me to turn it on?"
  blender_switch = gets.chomp.to_s

      if blender_switch == "yes"
      puts "The blender is now turned on."

      # MAKE THE EXIT CLAUSE
      else blender_switch == "no"
      puts "Ok another day then."
      end
  end
my_blender.blend(available_ingredients)
#else, end program or something.
