require_relative 'classes/building'
require_relative 'classes/person'
require_relative 'classes/apartment'




ticsay_towers = Building.new








puts "Enter building information: adress"
address = gets.chomp
puts "Enter building information: style"
style = gets.chomp
puts "Enter building information: has doorman"
has_doorman = gets.chomp
puts "Enter building information: is walkup"
is_walkup = gets.chomp
puts "Enter building information: number of floors"
num_floors = gets.chomp
puts "Enter building information: apartments"
apartments = gets.chomp

puts "Enter apartment information: price"
price = gets.chomp
puts "Enter apartment information: is occupied"
is_occupied = gets.chomp
puts "Enter apartment information: square feet"
sqft = gets.chomp
puts "Enter apartment information: number of beds"
num_beds = gets.chomp
puts "Enter apartment information: number of baths"
num_baths = gets.chomp

puts "Enter renter information: name"
name = gets.chomp
puts "Enter renter information: age"
age = gets.chomp
puts "Enter renter information: gender"
gender = gets.chomp
puts "Enter renter information: apartment"
apartment = gets.chomp


_tower = Building.new(address, style, @has_doorman, @is_walkup, @num_floors)
ticsay_tower.apartments[:apt1] = Apartment.new(name, price, sqft, num_beds, num_baths)
ticsay_tower.apartments[:apt1].tenant << Person.new(name, age, gender)

puts ticsay_tower
puts ticsay_tower.apartments[:apt1]
ticsay_tower.apartments[:apt1].tenant.each {|tenant| puts tenant}

