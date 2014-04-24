print "What is your age? "
user_age = gets.chomp.to_i


def check_drinking_age (user_age)

  if user_age >= 21 && user_age < 100
    puts "Enjoy your drink"
  elsif user_age < 21
    puts "Drinking is bad"
  elsif user_age >= 100
    puts "Get your ass some help"

  end
end

 check_drinking_age (user_age)
