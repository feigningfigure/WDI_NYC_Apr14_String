require_relative "building"
require_relative "apartment"
require_relative "person"

$ben = Owner.new
$ben.name = "Ben"

building1("123 this bullshit", "tall") = Building.new

building1.to_s

building.apartment.person.

# building << apartment

def method_push_apt
# building.push(apartment)