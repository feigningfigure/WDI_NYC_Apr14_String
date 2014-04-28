class Building

  attr_accessor :address, :style, :has_doorman, :is_walkup, :num_floors, :apartments

def initialize(attributes={})
  puts "What's the address of the building?"
  @address = gets.chomp.to_s
  puts "What style is the building?"
  @style = gets.chomp.to_s
  puts "Does the building have a doorman? Please answer true or false."
  @has_doorman = gets.chomp.to_s
  puts "Is the building a walk-up? Please answer true or false."
  @is_walkup = gets.chomp.to_s
  puts "How many floors are in the building?"
  @num_floors = gets.chomp.to_s
  puts "What are the names of all the apartments in the building?"
  @apartments = gets.chomp.to_s
end

# def create_new_apartment(price, is_occupied, sqft, num_beds, num_baths, renters)

end

# building = Building.new

# puts building.address
# puts building.style
# puts building.has_doorman
# puts building.is_walkup
# puts building.num_floors
# puts building.apartments
