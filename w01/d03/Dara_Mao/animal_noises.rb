 #user_input is not the same as the user_input in the case loop

def animal_noises
  user_input = "default" #set to anything
  while (user_input != "Q")
    case user_input
      when "cat"
        puts "Meow!"
        # menu
      when "dog"
        puts "Woof"
        # menu
    end
      puts "What animal would you like to hear? (dog or cat) or type Q to quit"
      user_input = gets.chomp
  end
end
animal_noises

# def menu
#   puts "What animal would you like to hear? (dog or cat) or type Q to quit"
#   user_input = gets.chomp
#     # while (user_input != "Q")
#     #   animal_noises(user_input)
#     # end
# end
# # menu


