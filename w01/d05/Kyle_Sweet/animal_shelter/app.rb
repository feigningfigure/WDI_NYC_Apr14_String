

require_relative 'classes/animal'
require_relative 'classes/shelter'
require_relative 'classes/client'

@happitails = Shelter.new("Happy Tails", "10 East 21st Street")

def menu
  puts ""
  puts "Welcome to Happy Tails Animal Shelter!"
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
    puts @happitails.display_animals
  when "B"
    puts @happitails.display_clients
  when "C"
    puts "Name the animal"
    name=gets.chomp
    name=Animal.new(name)
    p menu
  when "D"
    puts "What's your name?"
    name=gets.chomp
    name=Client.new(name,age)
    p menu
  when "E"
    # puts "Here is our list of animals:"
    # $happitails.display_animals
    # puts "Who do you want to adopt?"
  when "F"
    # Put Animal Up For Adoption
  when "Q"
    Kernel.exit
  end
end

menu
response = menu
  while response != "Q"
  response = menu

end
