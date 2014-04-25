require_relative 'building'
require_relative 'apartment'
require_relative 'person'
#require_relative 'rent'


giant = Building.new("3, Market", "Empire", true, true, 100)
apartment01 = Apartment.new("1500", true, 1000, 3, 2)
john_smith = Person.new("John Smith", 29, "male")

giant.apartments << apartment01
apartment01.renters << john_smith
john_smith.apartment << apartment01


#rent
apartment01.renter