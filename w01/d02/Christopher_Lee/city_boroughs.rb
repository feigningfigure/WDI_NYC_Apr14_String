def city_boroughs
  # get user input
  puts "What borough do you live in?"
borough = gets.chomp.to_s.downcase
# run a case statement with contingencies for all possible answers
case borough
  when "manhattan"
    puts "Money keep on making it"
  when "brooklyn"
    puts "Brooklyn keep on taking it"
  when "bronx", "the bronx"
    puts "Uptown Baby! Uptown Baby!"
  when "staten island"
    puts "The Shaolin and the Wu-Tang could be dangerous..."
  when "queens"
    puts "It's Queens!"
  else
    puts "Dat ain't no borough!"
  end
end

city_boroughs
