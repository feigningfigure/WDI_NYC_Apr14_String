def city_borough
  print "What borough do you live in? "
  boro = gets.chomp

  if boro == "manhattan"
    puts "You live in Manhattan, New York County"
  elsif boro == "brooklyn"
    puts "You live in Brooklyn, Kings County"
  elsif boro == "queens"
    puts "You live in Queens, Queens County"
  elsif boro == "bronx"
    puts "You live in the Bronx, Bronx County"
  elsif boro == "staten island"
    puts "You live in Staten Island, Richmond County"
  else
    puts "I didn't understand that"
    city_borough
    # Loop to start over this function?
  end
end

city_borough
