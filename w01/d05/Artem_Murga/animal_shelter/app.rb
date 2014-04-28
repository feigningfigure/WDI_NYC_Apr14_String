require_relative 'classes/animal'
require_relative 'classes/client'
require_relative 'classes/shelter'

# bark = Animal.new("Bark", 2, "dog")
# kitty = Animal.new("Kitty", 1, "cat")

@bark = Animal.new("Bark", 2, "dog")
@kitty = Animal.new("Kitty", 1, "cat")

@jane_stuart = Client.new("Jane Stuart", 28, "female")
@john_smith = Client.new("John Smith", 25, "male")
@john_smith.pets["Bark"] = @bark


@shelter = Shelter.new("HappyTails", "Union Square")

@shelter.accept_animal("Kitty", @kitty)
@shelter.accept_client("Jane Stuart", @jane_stuart)
@shelter.accept_client("John Smith", @john_smith)

#bob = Client.new("Bob", 28, "male")
#shelter.accept_client(bob, "Bobby")

def menu

  puts 
  puts "Welcome to HappyTails Animalshelter!"
  puts "Please choose from the menu below: "
  puts 
  puts "A: Display Animals"
  puts "B: Display Clients"
  puts "C: Create Animal"
  puts "D: Create Client"
  puts "E: Adopt Animal"
  puts "F: Put Animal Up For Adoption"
  puts "G: See all the creatures that were created"
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
    adopt_name = gets.chomp
      if @john_smith.pets.include?(adopt_name)
        puts "Yes, there is a pet available for adoption from other people"
        @shelter.accept_animal(@adopt_name, @adopt_name)
        @john_smith.give_away_pet(adopt_name)
      else
        puts "There is no such pets available to adopt from other people"
      end
  when "F"
    puts "Please, type a name of a pet"
    drive_out_name = gets.chomp
    if @shelter.animals.include?(drive_out_name)
      puts "Thank you. The pet is on the way to it's new owner."
      @shelter.give_away_animal(drive_out_name)
      @shelter.accept_pet(drive_out_name, drive_out_name)
    else
      p "There is no such animal. May be you want to create one?"
    end
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