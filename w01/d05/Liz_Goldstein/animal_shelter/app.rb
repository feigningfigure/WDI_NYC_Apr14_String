require_relative 'classes/animal'
require_relative 'classes/shelter'
require_relative 'classes/client'

happitails = Shelter.new("HappiTails")

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
    happitails.display_animals
    # Display Animals
  when "B"
    happitails.display_clients
    # Display Clients
  when "C"
    puts "What's the animals name?"
    name = gets.chomp
    animal = Animals.new(name)
    puts "And what kind of animals is #{animal.name}?"
    name= gets.chomp
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
