require 'rainbow'

def chop_up_ingredient(ingredient_name)
  ingredient_name = ingredient_name.gsub(' ','')
  letter_array = Array.new
  letter_array = ingredient_name.split('')
end

def color_the_ingredient(what_color,*ingredient)
  this_color = what_color.to_sym
  array = []
  ingredient.each do |ingred|
    if ingred.class != Array
      array << Rainbow(ingred).color(this_color)
      array.flatten
    else
      array << ingred.map { |letter| Rainbow(letter).color(this_color) }
    end
  end
  array
end