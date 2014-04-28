require_relative 'classes/animal'
require_relative 'classes/shelter'
require_relative 'classes/client'

@happitails = Shelter.new("HappiTails")

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
    print @happitails.display_animals
    puts""
  when "B"
    # Display Clients
    p @happitails.display_clients
  when "C"
    # Create Animal
    puts "What is the name of your animal?"
    pet_name = gets.chomp.downcase
      if @happitails.animals.include?(pet_name)
        puts "That name already exists, please pick another unique name."
        command = "C"
      end
    puts "How old is your pet?"
      pet_age = gets.chomp.to_i
    puts "What is the species of your pet?"
      species = gets.chomp.downcase
    #create animal class first with empty @toys array then push toys if they exist
    pet = Animal.new(pet_name, pet_age, species)
    @happitails.animals[pet_name] = pet
    puts "Does your animal have a toy, (y)es or (n)o?"
      answer = gets.chomp.downcase
      while answer == "y"
        puts "What is the name of the toy?"
        toy_name = gets.chomp
        pet.toys << toy_name
        puts "Does your animal have another toy, (y)es or (n)o?"
        answer = gets.chomp.downcase
      end
    puts ""
  when "D"
    # Create Client
    puts "What is your full name?"
      new_name = gets.chomp.downcase
    puts "How old are you?"
      new_age = gets.chomp.to_i
    client = Client.new(new_name, new_age)
    # @happitails.clients[client_name] = client_name
    @happitails.accept_client(new_name, client)
  when "E"
    # Adopt Animal
    puts "What is your full name?"
      client_name = gets.chomp.downcase
      if @happitails.clients.has_key?(client_name)
        puts "Which animal would you like to adopt?"
          print @happitails.display_animals
          animal = gets.chomp.downcase
          @happitails.clients[client_name].accept_pet(animal, client_name)
          @happitails.give_away_animal(animal)
      else
          puts "You're not in the database. Sign up with the shelter first."
      end
  when "F"
    # Put Animal Up For Adoption
      puts "What is your full name?"
        client_name = gets.chomp.downcase
        if @happitails.clients.has_key?(client_name)
          puts "What is the name of the pet you're putting up for adoption?"
            if pet = gets.chomp.downcase
              @happitails.clients.include?(pet)
              @happitails.accept_animal(pet, client_name)
              @happitails.clients[client_name].give_away_pet(pet)
            else
              puts "Are you sure this is your pet?"
            end
        else
          puts "You're not in the database. Sign up with the shelter first."
        end
  when "Q"
    Kernel.exit
  end
end

response = menu
while response != "Q"
  response = menu
end
