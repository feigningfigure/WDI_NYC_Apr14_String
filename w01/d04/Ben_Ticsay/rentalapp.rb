require_relative "building"
require_relative "apartment"
require_relative "person"



ben_lofts = Building.new("11 Ben St", "loft", true, false, 10)

ben_lofts <<

ben_lofts << 

ben_lofts.apartments[:unit_a] = Apartment.new("", 3000, true, 5000, 2, 2)

ben_lofts.apartments[:unit_b] = Apartment.new("B", 5000, false, 10000, 0, 1, )

ben_lofts.apartments[:unit_a].renters << Person.new("Batman", 30, "male")

ben_lofts.apartments[:unit_a].renters << Person.new("Robin", 20, "female")

puts ben_lofts
puts ben_lofts.apartments[:unit_a]
mckibben_lofts.apartments[:unit_a].renters.each {|renter| puts renter}
puts ben_lofts.apartments[:unit_b]
ben_lofts.apartments[:unit_b].renters.each {|renter| puts renter}



# $ben = Owner.new
# $ben.name = "Ben"

# building1("123 this bullshit", "tall") = Building.new

# def building1.to_s
# #building.@attribute.each.to_s

# puts ""

# end

# building.apartment.person.attribute#?

# # building << apartment

# def method_push_apt
# # building.push(apartment)



# def method_push_person



# puts "what object do you wanna know about?
