smoothie_array = ["flax seeds", "chia seeds", "coconut flakes", "spirulina", "pumpkin seeds", "oatmeal", "coco powder", "peanut butter", "almonds", "walnuts", "spinach", "greek yogurt", "nutrional yeast", "brussel sprouts", "asparagus", "kale", "brocoli rabe", "blue berries", "chopped banana", "straw berries", "mango", "hemp milk"]

b =  smoothie_array.map do |i|
 i.gsub(/\s+/, "").split('').shuffle.join
	
end
p b


# require_relative  'smoothies.rb'

# p blend(smoothie_ingredients)