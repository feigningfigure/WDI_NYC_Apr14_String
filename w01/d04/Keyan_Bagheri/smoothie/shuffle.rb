require 'rainbow'

def shuffle_array(array)
  print array.shuffle
end

def split_ingredient_to_array(ingredient_name)
  ingredient_name = ingredient_name.gsub(' ','')
  letter_array = Array.new
  letter_array = ingredient_name.split('')
  letter_array
end


def split_ingredients_in(ingredient_array)
  ingredient_array.map { |ingredient| split_ingredient_to_array(ingredient) }
end

def color_the_ingredient_white(ingredient)
  ingredient.map { |letter| Rainbow(letter).white}
end
def color_the_ingredient_yellow(ingredient)
  ingredient.map { |letter| Rainbow(letter).yellow}
end
def color_the_ingredient_blue(ingredient)
  ingredient.map { |letter| Rainbow(letter).blue}
end
def color_the_ingredient_red(ingredient)
  ingredient.map { |letter| Rainbow(letter).red}
end
def color_the_ingredient_green(ingredient)
  ingredient.map { |letter| Rainbow(letter).green}
end
def color_the_ingredient_magenta(ingredient)
  ingredient.map { |letter| Rainbow(letter).magenta}
end
def color_the_ingredient_cyan(ingredient)
  ingredient.map { |letter| Rainbow(letter).cyan}
end

