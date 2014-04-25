require_relative 'classes/building'
require_relative 'classes/apartment'
require_relative 'classes/person'


house = Building.new("3716 Park Ave S", "Tudor", true, true, 10)


tenc = Apartment.new(950,true,2000,3,4)

tenc.to_s

chris = Person.new('chris','27','male')


house.take_apartment(tenc)
house.to_s

chris.take_apartment(tenc)
chris.to_s

# puts chris.apartment

# Neel.apartment.price
