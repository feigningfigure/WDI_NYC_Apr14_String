require 'pry'

require_relative 'classes/animal'
require_relative 'classes/client'
require_relative 'classes/person'
require_relative 'classes/shelter'

$Shelter = Shelter.new
$Animal = Animal.new
$Client = .new
$Person =Person.new

# test_animal =  @animal = Animal.new("Tiny", "cat", "male", 3)
#  @animal.toys << "mice" << "string"

def menu
  puts ""
  puts "Welcome to HappiTails Animal Shelter!"
  puts "Please choose from the menu below: "
  puts ""
  puts "A: Display Animals"
  puts "B: Display Clients"
  puts "C: Create Animal"
  puts "D: Create Client"
  puts "E: Adopt Animal"
  puts "F: Put Animal Up For Adoption"
  puts "Q: Quit"
  puts ""
  command = gets.chomp.upcase


  case command
  when "A"
    # Display Animals
  when "B"
    # Display Clients
  when "C"
    # Create Animal
  when "D"
    # Create Client
  when "E"
    # Adopt Animal
  when "F"
    # Put Animal Up For Adoption
  when "Q"
    Kernel.exit
  end
end

response = menu
while response != "Q"
  response = menu
end




