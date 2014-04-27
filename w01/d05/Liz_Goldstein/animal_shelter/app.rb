require_relative 'classes/animal'
require_relative 'classes/shelter'
require_relative 'classes/client'

$happitails = Shelter.new("HappiTails")
lizzy = Client.new("lizzy", 33)
frisky = Animal.new("Frisky", "cat")
lizzy.pets << frisky
jj = Animal.new("JJ", "pitbull")
jj.to_s
$happitails.animals << jj
$happitails.clients << lizzy
$happitails.to_s


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
    # Display Animals # puts "#{@}"
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
    puts "What's your name?"
    name=gets.chomp
    name=Client.new(name)
    # client_name.to_s
    name.create
    menu
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
