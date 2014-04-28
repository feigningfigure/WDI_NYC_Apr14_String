require_relative "./classes/person.rb"
require_relative "./classes/animal.rb"
require_relative "./classes/shelter.rb"
require_relative "./helper_functions.rb"
load "./seed.rb"


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
    puts "Meet Our Animals:\n\n"
     puts @shelter.display_animals
  when "B"
    # Display Clients
    puts "Meet Our Clients:\n\n"
    puts @shelter.display_clients
  when "C"
    # Create Animal
    puts "What is the animal's name?"
    animal_name = gets.chomp
    puts "How old is the animal?"
    animal_age = gets.chomp
    puts "What is the animal's gender?"
    animal_gender = gets.chomp
    puts "What kind of animal is it?"
    animal_type = gets.chomp
    puts "Any toys? (Y/N)?"
    animal_toys = gets.chomp.upcase
    case animal_toys
      when "Y"
        puts "Please list #{animal_name}'s toys (comma separated)"
        animal_toys = gets.chomp.split(",")
      when "N"
        animal_toys = []
    end
    @shelter.create_animal(animal_name, animal_age, animal_gender, animal_type, animal_toys)

    puts "Welcome #{animal_name.capitalize}: "
    puts @shelter.display_animal(animal_name)
  when "D"
    # Create Client
     # (client_name, client_age, client_gender, client_kids, cleint_pets)
     puts "What is the client's name?"
     client_name = gets.chomp.capitalize
     puts "What is the client's age?"
     client_age = gets.chomp.to_i
     puts "What is the client's gender?"
     client_gender = gets.chomp
     puts "How many kids does the client have?"
     client_kids = gets.chomp.to_i
     @shelter.create_client(client_name, client_age, client_gender, client_kids)
     # create record first
     puts "Does the client have any pets (Y/N)?"
     client_pets = gets.chomp.upcase
     unless client_pets == "N"
        puts "How many pets does the client have?"
        number_of_pets = gets.chomp.to_i
        number_of_pets.times {
          animal_attributes = add_animal
          @shelter.clients[client_name.to_sym].acquire_pet(*animal_attributes)
        }
     end
     puts "Welcome #{client_name.capitalize}"
      puts @shelter.display_client(client_name)
  when "E"
    # Adopt Animal
    puts "Which client will be adopting today?"
    adopter = gets.chomp.capitalize
    # if @shelter.clients.select{|k,v| k[/#{Regexp.quote(adopter.capitalize)}/]}
    # else
    # end
    puts "Which animal will they be adopting today?"
    animal_name = gets.chomp.capitalize
    # @shelter.clients[adopter.to_sym].pets[adopted_pet.name.to_sym] = adopted_pet
    # [franz.name.to_sym] = franz
    #hash two is adopter, hash one is shelter
    @shelter.clients[adopter.to_sym].pets[animal_name.to_sym] = @shelter.animals[animal_name.to_sym]
    # @shelter.clients.hash_two[animal_name.to_sym] = @shelter.animals.delete(animal_name.to_sym)
    @shelter.release_animal(animal_name)
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
