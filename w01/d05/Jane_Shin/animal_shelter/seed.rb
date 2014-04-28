require_relative 'classes/animal'
require_relative 'classes/shelter'
require_relative 'classes/client'

happitails = Shelter.new(happitails)
# @happitails.clients = {["jane", "v"]}
# @happitails.animals = {["ruby", "jane"]}
ruby = Animal.new("ruby", 8, "dog")
jane = Client.new("jane", 7)
@happitails.accept_client("jane", "jane")
@happitails.accept_animal("ruby", "jane")

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