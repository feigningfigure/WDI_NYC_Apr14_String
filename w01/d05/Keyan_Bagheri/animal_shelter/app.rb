require_relative 'helper'

def menu(shelter)
	string1 = "Welcome to #{shelter.name}!"
	string2 = "Please choose from the menu below: "
	string_a = "A: Display Animals"
	string_b = "B: Display Clients"
	string_c = "C: Put Animal Up For Adoption"
	string_d = "D: Join #{shelter.name} Family"
	string_e = "E: Adopt Animal"
	string_q = "Q: Quit"

	puts
	puts string1
	system "say #{string1}"
	puts
	puts string2
	system "say #{string2}"
	puts
	puts string_a
	puts string_b
	puts string_c
	puts string_d
	puts string_e
	puts string_q
	puts

	input = gets.chomp.upcase

	puts

	case input
	when "A"
		a = "#{shelter.name} has #{shelter.animal_count} adorable animals looking for a good home."
		puts a
		system "say #{a}"
		a1 = "See below for a complete list of pets."
		puts a1
		system "say #{a1}"
		puts
		shelter.display_animals
		puts
		sleep(1)
	when "B"
		b = "#{shelter.name} has #{shelter.client_count} wonderful clients."
		puts b
		system "say #{b}"
		b1 = "See below for a complete list of clients."
		puts b1
		system "say #{b1}"
		puts
		shelter.display_clients
		puts
		sleep(1)
	when "C"
		c0 = "What is the name of the animal that you wish to abandon?"
		puts c0
		system "say #{c0}"
		animal_name = titleize(gets.chomp)
		c1 = "What is the age of #{animal_name}?"
		puts c1
		system "say #{c1}"
		animal_age = gets.chomp
		c2 = "What type of animal is #{animal_name}?"
		puts c2
		system "say #{c2}"
		animal_type = gets.chomp
		new_animal = Animal.new(animal_name,animal_age,animal_type)
		shelter.accept_animal(animal_name,new_animal)
		c3 = "You are in luck! We have space open."
		puts c3
		system "say #{c3}"
		c4 = "#{animal_name} has been accepted to #{shelter.name}."
		puts c4
		system "say #{c4}"
		puts
		sleep(1)
	when "D"
		d0 = "What is your name?"
		puts d0
		system "say #{d0}"
		client_name = titleize(gets.chomp)
		d1 = "How old are you?"
		puts d1
		system "say #{d1}"
		client_age = gets.chomp
		new_client = Client.new(client_name,client_age)
		shelter.accept_client(client_name,new_client)
		d2 = "Congratulations #{client_name}! Welcome to #{shelter.name}."
		puts d2
		system "say #{d2}"
		puts
		sleep(1)
	when "E"
		e0 = "What animal do you want to adopt?"
		puts e0
		system "say #{e0}"
		puts
		sleep(1)
		shelter.display_animals
		puts
		lucky_animal = titleize(gets.chomp)
		shelter.give_away_animal(lucky_animal)
		e1 = "#{lucky_animal} is so excited to join your family."
		puts e1
		system "say #{e1}"
		puts
		sleep(1)
	when "Q"
		Kernel.exit
	end
end

response = menu($happitails)
while response != "Q"
	response = menu($happitails)
end


