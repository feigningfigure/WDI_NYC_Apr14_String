require_relative 'classes/animal'
require_relative 'classes/client'
require_relative 'classes/shelter'

@happitails = Shelter.new("HappiTails", "10 East 21st Street")


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
    puts @happitails.display_animals
  when "B"
    # Display Clients
    puts @happitails.display_clients

  when "C"
    # Create Animal
    puts "Enter animal name: "
    animal_name = gets.chomp
    if @happitails.animals.include?(animal_name)
      puts "Animal already exists"
      menu
    end
    puts "Enter age of animal: "
    animal_age = gets.chomp
    puts "Enter animal species: "
    animal_species = gets.chomp

    animal1 = Animal.new(animal_name, animal_age, animal_species)
    puts animal1.to_s
    # @happitails.animals[animal_name] = animal1
    @happitails.accept_animal(animal_name, animal1)
    puts "Animal has been added"
    puts "Does #{animal_name} have any toys? (Y)es or (N)o"
    toys_answer = gets.chomp.downcase
    while toys_answer == "y"
      puts "Enter toy: "
      user_toy = gets.chomp
      animal1.has_toys(user_toy)
      puts "Success! Another toy? (Y)es or (N)o"
      toys_answer = gets.chomp
    end

  when "D"
    # Create Client
    puts "Enter client name: "
    client_name = gets.chomp
    if @happitails.clients.include?(client_name)
      puts "Client already exists"
      menu
    else
    puts "Enter age: "
    client_age = gets.chomp

    client1 = Client.new(client_name, client_age)
    puts client1.to_s
    # @happitails.clients[client_name] = client1
    @happitails.accept_client(client_name, client1)

    puts "Client has been added"
  end
  when "E"
    # Adopt Animal
    puts "Enter client: "
    potential_owner = gets.chomp
    #
    if @happitails.clients.include?(potential_owner)

      puts "Which animal would you like to adopt?"
      pet_name = gets.chomp

      @happitails.clients[potential_owner].accept_pet(pet_name, potential_owner)
      @happitails.give_away_animal(pet_name)
    else
      menu
    end


  when "F"
    # Put Animal Up For Adoption
    puts "Enter client: "
    current_owner = gets.chomp

    if @happitails.clients.include?(current_owner)
      puts "Enter animal name"
      animal_name1 = gets.chomp

      @happitails.accept_animal(animal_name1, animal1)
      @happitails.clients[current_owner].give_away_pet(animal_name1)


    else
      menu

    end
  when "Q"
    Kernel.exit
  end
end

response = menu
while response != "Q"
  response = menu
end


menu
