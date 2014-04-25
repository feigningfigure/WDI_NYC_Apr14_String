require_relative'building'
require_relative 'apartment'
require_relative 'person'

bob = Person.new
sweet_home = Apartment.new
sweet_home.renters << bob
townhouse = Building.new
townhouse.apartment << sweet_home

puts townhouse