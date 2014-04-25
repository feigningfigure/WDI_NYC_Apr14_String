
require 'pry'#
require_relative 'classes/building'
require_relative 'classes/apartment'
require_relative 'classes/person'

# $ron = Person.new
# $ron.name = "Ron"
# $ron.age = 54
# $ron.gender = "male"
# $ron.apartment = "3R"

# $ga = Building.new
# $ga.address = "West 21st"
# $ga.apartments << "3r"
# $ga.table.new
# $declan.assemble#_table
building = Building.new

puts building.address
puts building.style
puts building.has_doorman
puts building.is_walkup
puts building.num_floors
puts building.apartments

apartment = Apartment.new

puts apartment.price
puts apartment.is_occupied
puts apartment.sqft
puts apartment.num_beds
puts apartment.num_baths
puts apartment.renters

person = Person.new
# person.name = "Dennis"
# person.age = 23
# person.gender = "male"
# person.floors = 50
# person.apartment = "1B"

puts person.name
puts person.age
puts person.gender
puts person.floors
puts person.apartment



# $declan.find_ingredients_for_sandwich
# # $declan.bag.each do |item|
# # if item.class != Notebook
# #   $declan.table.surface << item
# # end
# $declan.move_bag_contents_to_table
# $declan.table.surface = $declan.bag.select do |item|
#   item.class != Notebook
# end
# $declan.bag = $declan.bag - $declan.table.surface
  # $declan.bag -
# $declan.slice_bread

puts $declan.make_sandwich
