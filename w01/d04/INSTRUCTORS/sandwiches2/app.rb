<<<<<<< HEAD
require_relative 'classes/student'


=======
require_relative 'classes/notebook'
require_relative 'classes/student'
require_relative 'classes/dollar'
require_relative 'classes/bread'
require_relative 'classes/peanut_butter'
require_relative 'classes/jelly'
require_relative 'classes/table'
require_relative 'classes/sandwich'


$declan = Student.new
$declan.name = "Declan"
$declan.bag << Notebook.new
$declan.assemble_table

$declan.find_ingredients_for_sandwich
# this creates issues
# $declan.bag.each do |item|
#   if item.class != Notebook
#      $declan.table.surface << item
#   end
# end
$declan.move_bag_contents_to_table
# $declan.slice_bread

puts $declan.make_sandwich

# I should see one notebook
>>>>>>> 8561ece8ceab601c7c633d3e43085577e896e844
