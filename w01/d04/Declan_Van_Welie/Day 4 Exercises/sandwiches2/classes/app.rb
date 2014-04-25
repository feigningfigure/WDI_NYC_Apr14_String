

require 'pry'#



$declan = Student.new
$declan.name = "Declan"
$declan.bag << Notebook.new
$declan.table.new
binding.pry
$declan.assemble#_table


$declan.find_ingredients_for_sandwich
# $declan.bag.each do |item|
# if item.class != Notebook
#   $declan.table.surface << item
# end
$declan.move_bag_contents_to_table
# $declan.table.surface = $declan.bag.select do |item|
#   item.class != Notebook
# end
# $declan.bag = $declan.bag - $declan.table.surface
  # $declan.bag -
# $declan.slice_bread

puts $declan.make_sandwich
