require_relative 'classes/animal'
require_relative 'classes/client'
require_relative 'classes/shelter'

# bark = Animal.new("Bark", 2, "dog")
# kitty = Animal.new("Kitty", 1, "cat")

@bark = Animal.new("Bark", 2, "dog")
@kitty = Animal.new("Kitty", 1, "cat")

@jane_stuart = Client.new("Jane Stuart", 28, "female")
@john_smith = Client.new("John Smith", 25, "male")

@shelter = Shelter.new("HappyTails", "Union Square")

@shelter.accept_animal(@kitty, "Kitty")
@shelter.accept_client(@jane_stuart, "Jane Stuart")

#bob = Client.new("Bob", 28, "male")
#shelter.accept_client(bob, "Bobby")

def menu

  puts 
  puts "Welcome to HappiTails Animalshelter!"
  puts "Please choose from the menu below: "
  puts 
  puts "A: Display Animals"
  puts "B: Display Clients"
  puts "C: Create Animal"
  puts "D: Create Client"
  puts "E: Adopt Animal"
  puts "F: Put Animal Up For Adoption"
  puts "G: See all the creatures were created through our shelter"
  puts "Q: Quit"
  puts 
  response = gets.chomp.upcase


  case response
  when "A"
    @shelter.display_animals
  when "B"
    @shelter.display_clients
  when "C"
    puts "Please, type a name of a pet"
    creating_name = gets.chomp
    puts "Please, type an age of a pet"
    creating_age = gets.chomp
    puts "Please, type an specie of an animal"
    creating_species = gets.chomp
    new_animal = Animal.new(creating_name, creating_age, creating_species)
    @shelter.accept_animal(new_animal, creating_name)
  when "D"
    #Need to figure out how to add client to the shelter
     puts "Please, type a name of a Client"
     client_name = gets.chomp
     new_client = Client.new(client_name)
     @shelter.accept_client(client_name, new_client)
  when "E"
    puts "Please, type a name of a pet"
    @name = gets.chomp
    @shelter.accept_animal(@name)
  when "F"
    #TODO: create+add
    shelter.give_away_animal(name)
    puts "Please, type a name of a pet"
    accepted_name = gets.chomp
  when "G" 
    p Animal.animals_log
  when "Q"
    Kernel.exit
  end
end

response = menu
while response != "Q"
  response = menu
end