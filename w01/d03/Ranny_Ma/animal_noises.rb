def menu
  puts "Select an animal (dog or cat) or type Q to quit"
  input = gets.chomp
  animal_noises
end

menu

def animal_noises
  while (input != "Q")
  case input
    when "dog"
      puts "Woof!"
    when "cat"
      puts "Meow!"
  end
menu
end
