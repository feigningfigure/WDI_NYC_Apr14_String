require_relative 'classes/notebook'
require_relative 'classes/student'
require_relative 'classes/dollars'
require_relative 'classes/bread'
require_relative 'classes/peanut_butter'
require_relative 'classes/jelly'
require_relative 'classes/table'

$declan = Student.new
$declan.find_ingredients_for_sandwich
$declan.make_table
puts $declan.bag
$declan.put_things_on_table(1)
puts $declan.bag

# I should see one notebook