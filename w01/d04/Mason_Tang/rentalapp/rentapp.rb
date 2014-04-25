require 'pry'
require_relative 'classes/building'
require_relative 'classes/apartment'
require_relative 'classes/person'


puts "Enter building address"
address = gets.chomp
puts "Enter building style"
style = gets.chomp
puts "Does the building have a door man?"
has_doorman = gets.chomp
puts "Is it a walk up?"
is_walkup = gets.chomp
puts "How many floors are there?"
num_floors = gets.chomp
puts "Enter apartment number 1"
name = gets.chomp
puts "What is the rent"
price = gets.chomp
puts "What is sq ft"
sqft = gets.chomp
puts "how many beds"
num_beds = gets.chomp
puts "how many baths"
num_baths = gets.chomp
puts "What is the name of first tenant"
name = gets.chomp
puts "What is the age of first tenant"
age = gets.chomp
puts "What is the gender of first tenant"
gender = gets.chomp







mase_tower = Building.new(address, style, @has_doorman, @is_walkup, @num_floors)
mase_tower.apartments[:apt1] = Apartment.new(name, price, sqft, num_beds, num_baths)
mase_tower.apartments[:apt1].tenant << Person.new(name, age, gender)

puts mase_tower
puts mase_tower.apartments[:apt1]
mase_tower.apartments[:apt1].tenant.each {|tenant| puts tenant}


