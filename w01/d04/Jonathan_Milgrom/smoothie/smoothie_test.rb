smoothie_ingredients = {
  'flax seeds' => '1 tbsp',
  'chia seeds' => '1 tbsp',
  'coconut flakes' => '1 tbsp'
}

def blend(smoothie_ingredients)
  x = []
  smoothie_ingredients.each do |k, v|
     x << k 
  end
  return x
end

x = blend(smoothie_ingredients)

puts y = x.join('')

puts y.class

puts w = y.split('')

puts w.class

puts z = w.shuffle

puts z.class

puts [1,2,3,4].shuffle

puts "string".shuffle