def animal_response(user_input)
  while (user_input != "Q")
    case user_input
    when "cat"
      puts "Meow!"
    when "dog"
      puts "Woof"
    end
    menu
  end
end

def menu
  puts "Select an animal (dog or cat) or type Q to quit"
user_input = gets.chomp
#return user_input
animal_noises(user_input)
end
menu
