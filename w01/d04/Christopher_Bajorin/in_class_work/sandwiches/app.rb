require_relative 'classes/notebook'
require_relative 'classes/student'
require_relative 'classes/dollar'
require_relative 'classes/peanut_butter'
require_relative 'classes/bread'
require_relative 'classes/jelly'
require_relative 'classes/table'

require 'pry'

$declan = Student.new
$declan.name = "Declan"
$declan.bag << Notebook.new
binding.pry
$declan.assemble


$declan.find_ingredients_for_sandwich

#this causes issues
# $declan.bag.each do |item|
#   if item.class != Notebook
#     $declan.table.surface << item
#   end
# end
$declan.move_bag_contents_to_table
# $declan.table.surface = $declan.bag.select do |item|
#   item.class != Notebook
# end

# $declan.bag = $declan.bag - $declan.table.surface

# $declan.slice_bread
# I should see one notebook
