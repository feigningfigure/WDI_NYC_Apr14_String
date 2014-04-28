require_relative 'classes/animal'
require_relative 'classes/shelter'
require_relative 'classes/person'

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
	 @shelter = Shelter.new('HappiTails', '10 East 21st Street')
	case command 
	when "A" 
		return @shelter.display_animals
	# Display Animals when "B" 
	when "B"
		return @shelter.display_clients
	# Display Clients when "C" 
	when "C"
		puts "What is your pet's name: "
		animal_name = gets.chomp.to_s
		return Animal.new(animal_name)
		# Create Animal when "D" 
	when "D"
		puts "What is your name"
		client_name = gets.chomp.to_s
		return Client.new(client_name)
	when "E"
		puts "Which animal would you like to adopt"
		adopted_animal_name = gets.chomp.to_s
		@shelter.give_away_animal(adopted_animal_name)
		# Create Client when "E" 
		# Adopt Animal when "F" 
	when "F"
		puts "What is your pet's name: "
		animal_name = gets.chomp.to_s
		puts "Your pet is what kind of animal?"
		animal_type = gets.chomp.to_s
		@shelter.accept_animal(animal_name, animal_type)
		# Put Animal Up For Adoption 
	when "Q" 
		Kernel.exit 
	end 
end

response = menu 
while response != "Q" 
	response = menu 
end