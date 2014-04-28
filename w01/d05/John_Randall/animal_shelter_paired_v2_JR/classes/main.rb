require_relative "./classes/person.rb"
require_relative "./classes/animal.rb"
require_relative "./classes/shelter.rb"
load "./seed.rb"



# # Create a main.rb
# # It should create a new shelter for you
# # It should display a menu of options for the user to choose from:
# # Create an animal
# # Create a client
# # Create a shelter
# # Quit
# # When creating an animal or client, the user is prompted for information like names, age etc. Newly created animals and clients should be added to the shelter.


# test_shelter_from_main = Shelter.new()



# def menu
#   puts ""
#   puts "Welcome to HappiTails Animal Shelter!"
#   puts "Please choose from the menu below: "
#   puts ""
#   puts "A: Display Animals"
#   puts "B: Display Clients"
#   puts "C: Create Animal"
#   puts "D: Create Client"
#   puts "E: Adopt Animal"
#   puts "F: Put Animal Up For Adoption"
#   puts "Q: Quit"
#   puts ""
#   command = gets.chomp.upcase


#   case command
#   when "A"
#     # Display Animals
#     puts "Meet Our Animals:"
#     puts ""
#      puts @shelter.display_animals
#   when "B"
#     # Display Clients
#     puts "Meet Our Clients:"
#     puts ""
#     puts @shelter.display_clients
#   when "C"
#     # Create Animal
#     puts "What is the animal's name?"
#     animal_name = gets.chomp
#     puts "How old is the animal?"
#     animal_age = gets.chomp
#     puts "What is the animal's gender?"
#     animal_gender = gets.chomp
#     puts "What kind of animal is it?"
#     animal_type = gets.chomp
#     puts "Any toys? (Y/N)?"
#     animal_toys = gets.chomp.upcase
#       case animal_toys
#         when "Y"
#           animal_toys = gets.chomp.split(",")
#         when "N"
#           animal_toys = []
#       end

#   when "D"
#     # Create Client
#   when "E"
#     # Adopt Animal
#   when "F"
#     # Put Animal Up For Adoption
#   when "Q"
#     Kernel.exit
#   end
# end

# response = menu
# while response != "Q"
#   response = menu
# end



animal = Animal.new("Tiny", "cat", nil, 3)


