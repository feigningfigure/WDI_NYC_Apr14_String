
require 'pry'#
require_relative 'classes/building'
require_relative 'classes/apartment'
require_relative 'classes/person'

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

puts person.name
puts person.age
puts person.gender
puts person.floors
puts person.apartment

