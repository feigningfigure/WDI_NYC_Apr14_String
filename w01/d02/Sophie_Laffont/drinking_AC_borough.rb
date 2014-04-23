

#PART 1

#DRINKING AGE

print "what is your age? "

user_age = gets.chomp.to_i # because conditional does not work with strings

if user_age > 21
  print "Come on in and have a drink or two!"
  print user_age
  elsif user_age >= 18 && user_age< 21
  puts "Just a few more years!"
  else
  puts "Enjoy the rest of your youth!"
  end


  #AIR CONDITIONING

dprint "Enter the current room temperature"
currentTemp = gets.chomp.to_i

print "Is the AC functional? Answer yes or no."
acCondition = gets.chomp.to_s


print "Please enter your desired room temperature."
desiredTemp = gets.chomp.to_i


if acCondition == "yes" && currentTemp > desiredTemp
puts "Turn on the A/C Please"

elsif acCondition == "no" && currentTemp > desiredTemp
puts "Fix the A/C now! It's hot!"

else acCondition == "yes" && currentTemp < desiredTemp
puts "Fix the A/C whenever you have the chance... It's cool...Brrrrrrr."

end


# BOROUGHS

rint "In which borough do you live? "

borough = gets.chomp.to_s # because conditional does not work with strings

if borough == "Manhattan"
  print "I love Manhattan!"

  elsif borough == "Brooklyn"
  print "I love Brooklyn!"

  elsif borough == "Queens"
  print "I love Queens!"

  elsif borough == "Staten Island"
  print "I love Staten Island!"

  else borough == "Bronx"
  print "I love the Bronx!"

  end

