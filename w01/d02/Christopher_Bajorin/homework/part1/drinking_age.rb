#drinking age program

def drinking_age(age)
  if age > 21
    puts "You can drink alcohol (in the US)!"
  elsif age < 21
    puts "Only #{age}? You can't drink yet. Try Canada."
  else
    puts "GAME TIME!"
  end
end
