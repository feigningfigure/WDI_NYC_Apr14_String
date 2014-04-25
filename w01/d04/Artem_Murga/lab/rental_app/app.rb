require_relative 'building'
require_relative 'apartment'
require_relative 'person'

p giant = Building.new("3, Market", "Empire", true, true, 100)
p apartment01 = Apartment.new("1500", true, 1000, 3, 2)