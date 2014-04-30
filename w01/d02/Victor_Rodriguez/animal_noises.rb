def animal_noises
while (animal != "Q")
case animal
	when "Dog"
	puts "Woof"
	menu
	when "Cat"
	puts "Meow"
	menu
end
end
end

def menu
puts "what animal would you like to hear Dog or Cat or type Q to quit"
animal = gets.chomp

end

menu

def animal_noises
while (animal != "Q")
case animal
	when "Dog"
	puts "Woof"

	when "Cat"
	puts "Meow"
end

menu

end
