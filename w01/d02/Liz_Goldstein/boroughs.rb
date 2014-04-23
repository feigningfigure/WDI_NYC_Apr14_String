def borough_catcall(borough)
case borough
when "Manhattan"; puts "Classy!"
when "Brooklyn"; puts "Gentrifier!"
when "Queens"; puts "Diverse!"
when "Bronx"; puts "Holla!"
when "Staten Island"; puts "I just don't know"
end
end

borough_catcall("Manhattan")
borough_catcall("Brooklyn")
borough_catcall("Queens")
borough_catcall("Bronx")
borough_catcall("Staten Island")

puts "so where do you live?"
you = gets.chomp
borough_catcall(you)


