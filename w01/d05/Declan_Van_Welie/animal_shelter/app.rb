require_relative 'classes/animal.rb'
require_relative 'classes/shelter.rb'
require_relative 'classes/person.rb'

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
    Shelter.display_animals

  when "B"
    # Display Clients
    Shelter.display_clients

  when "C"
    # Create Animal
    Animal.new(:name, :age, :species, :gender, :toys)
    puts "What's the animal's name?"
    @name = gets.chomp
    puts "What's the animal's age?"
    @age = gets.chomp.to_s
    puts "What's the animal's species?"
    @species = gets.chomp
    puts "Whats the animal's gender?"
    @gender = gets.chomp
    puts "What toys does the animal have?"
    @toys = gets.chomp

  when "D"
    # Create Client
    Client.new(:name, :age, :pets)
    puts "What's the client's name?"
    @name = gets.chomp
    puts "What's the client's age?"
    @age = gets.chomp.to_s
    puts "What pets does the client have?"
    input = gets.chomp
    # while input != "" do
    # (pets, age) = input.split(",")
    # age = age.to_i

  when "E"
    # Adopt Animal
    puts "Which animal would you like to adopt?"
    adopted_animal = gets.chomp
    Shelter.animals.pop(adopted_animal)

  when "F"
    # Put Animal Up For Adoption
    puts "What is the name of the animal you would you like to put up for adoption?"
    Shelter.animals.pop = gets.chomp

  when "Q"
    Kernel.exit
  end
end

response = menu
while response != "Q"
  response = menu
end
