
def animal_noises
puts "What animal would you like to hear?"
  choice = gets.chomp.downcase
  case choice
    when "cat"
      puts "Meow!"
    when "dog"
      puts "Woof!"
    end
end

# def animal_noises_two(choice)
#     case choice
#       when "cat"
#         puts "Meow!"

#       when "dog"
#         puts "Woof!"

#     end
# end

# def menu
#   puts "What animal would you like to hear?"
#   choice = gets.chomp.to_s
#   if choice != "q"
#     animal_noises_two(choice)
#   end
# end
