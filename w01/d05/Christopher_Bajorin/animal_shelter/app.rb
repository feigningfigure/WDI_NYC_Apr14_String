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
    @happitails.display_animals
    puts "\nWhich animal would you like to see?\n".color(:green)
    specific_animal = gets.chomp
    if @happitails.animals.include?(specific_animal) == true
      puts @happitails.animals[specific_animal]
    else
      puts "That is not a valid selection".color(:red)
      command = "A"
    end
  when "B"
    # Display Clients
    @happitails.display_clients
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
      if any_toys == "y"
        puts "What toys? (e.g. ball, string)\n".color(:green)
        toys = gets.chomp.split(", ")
      elsif any_toys =="n"
        toys = []
      end
    end


    pet_hash["Name"] = name
    pet_hash["Age"] = age
    pet_hash["Toys"] = toys
    pet_hash["Type"] = type
    temp_animal = Animal.new(name,age,toys,type)
    pet_hash["string output"] = temp_animal.to_s
    @happitails.animals[name] = pet_hash

  when "D"
    # Create Client
    client_hash = Hash.new



  when "E"
    # Adopt Animal
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
