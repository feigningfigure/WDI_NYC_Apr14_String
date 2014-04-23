puts "What borough do you live?"
user_cityboro = gets.chomp

def what_boro(user_cityboro)
  if user_cityboro == "Manhattan"
    puts "Me too!"
  elsif user_cityboro == "Brooklyn"
    puts "That's cool."
  elsif user_cityboro == "Queens"
    puts "Cool place."
  elsif user_cityboro == "Bronx"
    puts "Awesome."
  elsif user_cityboro == "Staten Island"
    puts "Nice place."
  else
    puts "You don't live in NYC."
  end
end

what_boro(user_cityboro)
