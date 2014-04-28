require 'rainbow'

def color_match(ingredient)
  blue = "blue, currants, plum, rasp".split(/[,\s]+/)
  cyan = "aqua, water, ice, equal, violet, poppy, elder, lavender, hacksap, candy".split(/[,\s]+/)
  magenta = "purple, cherry, cranberries, cranberry, cherries, noir, grape, chia, fig, prune, raisin, eggplant, date".split(/[,\s]+/)
  white = "seed, cauliflower, cookie, flour, cream, almonds, flax, onion, garlic, soy, coconut, milk, hemp, whey, wheat, oatmeal, yogurt, sugar, salt".split(/[,\s]+/)
  yellow = "yellow, pumpkin, banana, peanut, yeast, flesh, egg, ginger, butter, nut, squash, passion, lemon, cantaloupe, pineapple, corn, turnip, grapefruit, orange, mango, carrot".split(/[,\s]+/)
  green = "green, leaf, leaves, herb, soylent, bean, jalepeno, pickle, grass, celery, pea, peas, chive, avocado, asparagus, spirulina, brussel, sprouts, cucumber, kiwi, apple, lettuce, spinach, kale, broccoli, lime".split(/[,\s]+/)
  red = "red, splenda, rose, tomato, tomatoes, peppers, strawberry, strawberries, straw, fuji, granny, watermelon, radish, pom, pomegranate, blood".split(/[,\s]+/)

  if blue.any? {|s| ingredient.downcase.include?(s)}
    "blue"
  elsif magenta.any? {|s| ingredient.downcase.include?(s)}
    "magenta"
  elsif green.any? {|s| ingredient.downcase.include?(s)}
    "green"
  elsif white.any? {|s| ingredient.downcase.include?(s)}
    "white"
  elsif yellow.any? {|s| ingredient.downcase.include?(s)}
    "yellow"
  elsif red.any? {|s| ingredient.downcase.include?(s)}
    "red"
  elsif cyan.any? {|s| ingredient.downcase.include?(s)}
    "cyan"
  else
    "default"
  end
end

  def color_the_ingredient(what_color,ingredient)
  this_color = what_color.to_sym
  Rainbow(ingredient).color(this_color)
end

def look_at_wallpaper
puts
puts "                                            _._"
puts "                                          .'   '."
puts "                                         /       \\  ___"
puts "                        _..       _.--. |     /  |.'   `'."
puts "               ;-._   .'   `\\   .'     `\\   \\|   /        \\"
puts "             .'    `\\/       ; /     _   \\.=..=./  _.'    /"
puts "             |       `\\.---._| '.   .-'-.}`.<>.`{-'-.    /"
puts "          .--;   . ( .'      '.  \\ .---.{ <>()<> }.--..-'"
puts "         / _  \\_  './ _.       `-./     _},'<>`.{_    `\\"
puts "        ( = \\  )`\"\"'\\;--.         /  .-'/ )=..=;`\\`-    \\"
puts "        {= (|  )     /`.         /       /  /| \\         )"
puts "        ( =_/  )__..-\\         .'-..___.'    :  '.___..-'"
puts "         \\    }/    / ;.____.-;/\\      |      `   |"
puts "          '--' |  .'   |       \\ \\     /'.      _.'"
puts "               \\  '    /       |\\.\\   ;  /`--.-'"
puts "                )    .'`-.    /  \\ \\  |`|"
puts "               /__.-'     \\_.'    \\ \\ |-|"
puts
end