require_relative 'helper'
$betsy = Blender.new

puts
puts
puts Rainbow("You find yourself in the kitchen, uncertain of two things:").cyan
sleep(3)
puts
puts Rainbow("- how it is you actually got there...").cyan
sleep(2)
puts Rainbow("- and how long you have been staring blankly into the floral wallpaper.").cyan
sleep(3)
puts
puts Rainbow("What is certain is that you are thirsty.").cyan
sleep(2)
puts
puts Rainbow("You see a strange, shiney new blender on the countertop.").cyan
sleep(3)
puts
puts

def menu
	puts Rainbow("What's your next move?").cyan
	sleep(1)
	puts
	puts Rainbow("A: Press the large and daunting 'Start' button.").cyan
	sleep(1.0/4.0)
	puts Rainbow("B: Flip the small seemingly insignificant switch on the side.").cyan
	sleep(1.0/4.0)
	puts Rainbow("C: Add your favorite ingredients to the machine.").cyan
	sleep(1.0/4.0)
	puts Rainbow("D: Go back to staring at the wallpaper").cyan
	sleep(1.0/4.0)
	puts Rainbow("X: Exit the kitchen.").cyan
	puts
	input = gets.chomp.downcase

	case input
	when "a"
		puts
		$betsy.start_button
		sleep(1)
	when "b"
		puts
		if $betsy.is_on == false
			puts Rainbow("You hear a faint whirring sound.").cyan
			sleep(3)
			puts
			$betsy.turn_on_blender
		else
			$betsy.turn_off_blender
		end
	when "c"
		puts
		make_something_tastey
	when "d"
		puts
		puts
		look_at_wallpaper
		puts
		puts
		puts
		puts
		sleep(5)
		puts Rainbow("You no longer find this interesting.").cyan
		puts
	when "x"
		if $betsy.is_on == true
			puts
			puts Rainbow("Don't forget to turn off the machine. We all have to do our part.").cyan
			sleep(1)
			puts
			puts Rainbow("Would you like to turn off the blender and leave now? (Y/N)").cyan
			puts
			input = gets.chomp.upcase
			puts
			if input == "Y"
			sleep(1)
			$betsy.turn_off_blender
			Kernel.exit
			end
		else
			Kernel.exit
		end
	end
end

def make_something_tastey
	puts Rainbow("What would you like to add?").cyan
	puts Rainbow("Enter one ingredient or type 'F' when finished.").cyan
	puts
	ingredient_name = gets.chomp.upcase
	puts
	if ingredient_name == "F"
		return
	else
		$betsy.add(ingredient_name)
		make_something_tastey
	end
end

response = menu
while response != "x"
	response = menu
end