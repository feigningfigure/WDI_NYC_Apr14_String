def input_user
	puts "Select an animal or type (q) to quit"
	input = gets.chomp.downcase
end

def animal_noises
	input = "default"
while input != "q"
	case input
	when "cat" then puts "Meow!"
	when "dog" then puts "Woof"
	when "cow" then puts "Moo!"
	when "rooster" then puts "Karee-ki-kee-kee (our rooster is German)"
	when "fish" then puts "Blub-Blub"
	when "snake" then puts "Hiss"
	when "human" then puts "Do you even lift, Bro?"
	end
	input = input_user
end
end

animal_noises