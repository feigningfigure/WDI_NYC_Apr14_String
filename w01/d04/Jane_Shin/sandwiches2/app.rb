require_relative 'classes/student'
require_relative 'classes/notebook'
require_relative 'classes/dollar'

declan = Student.new
declan.name = "Declan"
declan.bag << Notebook.new
# I should see one notebook
declan.assemble_table

declan.find_ingredients_for_sandwich
#finds bread
declan.bag.each do |item|
	if item.class != Notebook
		declan.table.surface.surface<< item
		#declan's table has the surface that we want to put the ingredients on, don't try to put it on declan's table
	end
end

declan.slice_bread
#slices the bread found in bag
