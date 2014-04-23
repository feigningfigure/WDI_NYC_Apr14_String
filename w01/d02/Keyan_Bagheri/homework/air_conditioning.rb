def air_control(current_temp, function_status, desired_temp)
	#if airconditioner is working and it is warmer than you desire
	if function_status == 'true' && current_temp > desired_temp
		puts "Turn on the A/C Please"
	#if airconditioner is broken and it is warmer than you desire
	elsif function_status == 'false' && current_temp > desired_temp
		puts "Fix the A/C now! It's hot!"
	#if airconditioner is broken and it is cooler than you desire
	elsif function_status == 'false' && current_temp < desired_temp
		puts "Fix the A/C whenever you have the chance... It's cool...Brrrrrrr."
	#if airconditioner is working but it is cool enough already
	else
		puts "It feels nice in here"
	end
end

#test method with pre-written arguments
air_control(80, "true", 75)

#prompt user for input
puts "What is the current room temperature?"
temp1 = gets.chomp.to_i
puts "What is your desired room temperature?"
temp2 = gets.chomp.to_i
puts "Is your A/C unit working? (true/false)"
functionality = gets.chomp
puts "Is your refriderator running? (true/false)"
answer = gets.chomp
#prompt user for laughter
puts "#{answer}? never-mind... I was going to make a funny"
puts "but I don't feel like it when it's #{temp1} degrees in here"
puts

#run method with input from user
air_control(temp1, functionality, temp2)
puts
