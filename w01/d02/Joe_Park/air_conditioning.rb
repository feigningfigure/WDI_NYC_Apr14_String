#define a function that takes as arugments, the current temp, is A/C functioning? and desired temp
#if ac is functional and current temp > desired, then display "turn on the ac please"
#if ac is non-functional and current temp > desired, then "fix the ac now its hot"
#if ac is non-functional and current temp < desired, then display "fix the ac whenever you hae the chance its cool brrrr"

def air_conditioning(ac_status, current_temp, desired_temp)
	if ac_status == "yes" && current_temp > desired_temp
		puts "Turn on the A/C Please"
	elsif ac_status == "no" && current_temp > desired_temp
		puts "Fix the A/C now! It's hot!"
	elsif ac_status == "no" && current_temp < desired_temp
		puts "Fix the A/C whenever you have the chance... It's cool...Brrrrrrr."
	else
		puts "The temperature of #{current_temp} is okay with me!"
	end
end

puts "Is the air conditioner operational? (yes/no)"
ac_status = gets.chomp

puts "What is the current temperature? "
current_temp = gets.chomp.to_i

puts "What is the desired temperature? "
desired_temp = gets.chomp.to_i

air_conditioning(ac_status, current_temp, desired_temp)