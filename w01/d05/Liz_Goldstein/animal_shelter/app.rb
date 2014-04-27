require_relative 'classes/animal'
require_relative 'classes/shelter'
require_relative 'classes/client'

$happitails = Shelter.new("HappiTails")

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
    $happitails.display_animals
    menu
    # Display Animals
  when "B"
    $happitails.display_clients
    menu
    # Display Clients
  when "C"
    puts "Name the animal"
    name=gets.chomp
    name=Animal.new(name)
    name.create
    menu
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

menu
