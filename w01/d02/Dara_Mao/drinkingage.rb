puts "Please enter your age: "
user_age = gets.chomp.to_i

def drinkingage(user_age)
  return user_age
end

  if user_age >= 21
    puts "You are old enough to drink. \nWhat would you like?"
  elsif user_age <21 && user_age >=0
    puts "In a few years."
  else
    puts "You have entered an invalid age."
  end
