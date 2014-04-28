require_relative 'classes/animal'
require_relative 'classes/client'
require_relative 'classes/shelter'
require 'rainbow/ext/string'
require 'pry'
@happitails = Shelter.new

def menu


  puts "\nWelcome to HappiTails Animal Shelter!\n".color(:green)
  puts "A: Display Animals".color(:green)
  puts "B: Display Clients".color(:green)
  puts "C: Create Animal".color(:green)
  puts "D: Create Client".color(:green)
  puts "E: Adopt Animal".color(:green)
  puts "F: Put Animal Up for Adoption".color(:green)
  puts "Q: Quit\n".color(:green)
  command = gets.chomp.upcase

  case command
  when "A"
    # Display Animals
    puts "Here are the animals:\n".color(:green)
    @happitails.display_animals
    puts "\nWhich animal would you like to see?\n".color(:green)
    specific_animal = gets.chomp
    if @happitails.animals.include?(specific_animal) == true
      puts ""
      puts @happitails.animals[specific_animal]["string output"]
    else
      puts "Invalid selection".color(:red)
    end
  when "B"
    # Display Clients
    puts "Here are the clients:\n".color(:green)
    @happitails.display_clients
    puts "\nWhich client would you like to see?".color(:green)
    specific_client = gets.chomp
    if@happitails.clients.include?(specific_client) == true
      puts ""
      puts @happitails.clients[specific_client]["string output"]
    else
      puts "Invalid selection".color(:red)
    end

  when "C"
    # Create Animal

    pet_hash = Hash.new

    puts "What is name of the pet?\n".color(:green)
    name = gets.chomp
    if @happitails.animals.include?(name) == true
      puts "Pick another name please".color(:red)
      command = "C"
    else
      puts "What type of animal?\n".color(:green)
      type = gets.chomp
      puts "How old is the animal?\n".color(:green)
      age = gets.chomp
      puts "Do you have any toys? (y/n)\n".color(:green)
      any_toys = gets.chomp
      if any_toys == "n"
        toys = []
      elsif any_toys =="y"
        puts "What toys? (e.g. ball, string)\n".color(:green)
        toys = gets.chomp.split(", ")
      end
    end

    pet_hash["Name"] = name
    pet_hash["Age"] = age
    pet_hash["Toys"] = toys
    pet_hash["Type"] = type
    temp_animal = Animal.new(name,age,toys,type)
    pet_hash["string output"] = temp_animal.to_s.color(:cyan)
    @happitails.accept_animal(name, pet_hash)

  when "D"
    # Create Client
    client_hash = Hash.new

    puts "What is the clients name?\n".color(:green)
    name = gets.chomp
    if @happitails.clients.include?(name) == true
      puts "Pick another name please.\n".color(:green)
      command = "D"
    else
      puts "How old is the client?\n".color(:green)
      age = gets.chomp
    end

    client_hash["Name"] = name
    client_hash["Age"] = age
    temp_client = Client.new(name, age)
    client_hash["string output"] = temp_client.to_s.color(:cyan)
    client_hash["Pets"] = Hash.new
    @happitails.accept_client(name, client_hash)

  when "E"
    # Adopt Animal
    @happitails.display_clients
    puts "\nWhich client?\n".color(:green)
    client_adopter = gets.chomp
    @happitails.display_animals
    puts "\nWhich animal?\n".color(:green)
    animal_adoptee = gets.chomp

    if @happitails.clients.include?(client_adopter) == true && @happitails.animals.include?(animal_adoptee) == true
      @happitails.clients[client_adopter]["Pets"][animal_adoptee] = @happitails.animals.delete(animal_adoptee)
    else
      puts "Invalid choices\n".color(:green)
    end
    binding.pry


  when "F"
    # Put Animal Up For Adoption

    @happitails.display_clients
    puts "\nWhich client?\n".color(:green)
    client_choice = gets.chomp
    if @happitails.clients.include?(client_choice) == true
      @happitails.display_pets(client_choice)
      puts "which animal?\n".color(:green)
      animal_choice = gets.chomp
      @happitails.animals[animal_choice] = @happitails.clients[client_choice]["Pets"].delete(animal_choice)
    else
      puts "Invalid Selection.\n".color(:red)
    end



  when "Q"
    Kernel.exit
  end
end

response = menu
while response != "Q"
  response = menu
end
