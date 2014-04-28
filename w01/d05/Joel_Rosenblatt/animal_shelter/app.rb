require_relative 'classes/animal'
require_relative 'classes/client'
require_relative 'classes/shelter'

$happitails = Shelter.new
$happitails.name = "HappiTails"
$happitails.address = "10 East 21st Street"


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
  when "B"
    $happitails.display_clients
  when "C"
    puts "Whats the name of the animal?"
    @name = gets.chomp.downcase
    puts "How old is the animal?"
    @age = gets.chomp.to_i
    puts "What kind of animal is it?"
    @species = gets.chomp.downcase
    @name = Animal.new(@name, @age, @species)
    $happitails.accept_animal(@name, @species)
    puts "Added to the database: #{@name}."
  when "D"
    puts "Whats the client's name?"
    @name = gets.chomp.downcase
    puts "What's the age of the client?"
    @age = gets.chomp.to_i
    name = Client.new(@name, @age)
    $happitails.accept_client(@name, @name)
    puts "Added to the database: #{@name}."
  when "E"
    puts "What is the name of the animal that you would like to adopt?"
    animal_name = gets.chomp.downcase
    puts "Whats the name of the client?"
    client_name = gets.chomp.downcase
    adopter = $happitails.clients[client_name]
    adopted = $happitails.animals[animal_name]
    adopter.accept_pet(animal_name, pet_name)
    $happitails.give_away_animal(animal_name)
    puts "#{client_name.capitalize}: You have adopted #{animal_name.capitalize}!"
  when "F"
     puts "What is the name of the animal that you would like to put up for adoption?"
    animal_name = gets.chomp.downcase
    puts "Whats the name of the client?"
    client_name = gets.chomp.downcase
    $happitails[pets] <<  client_name[pets][animal_name]
    puts "#{client_name.capitalize}: You have put #{animal_name.capitalize} for adoption!"
  when "Q"
    Kernel.exit
  end
end

response = menu
while response != "Q"
  response = menu
end
