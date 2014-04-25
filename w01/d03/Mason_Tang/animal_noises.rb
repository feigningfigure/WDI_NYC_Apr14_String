def animal_noises
  user_input = "default"
  while (user_input != "Q")
    case user_input
      when "cat"
        puts "Meow!"
        menu
      when "dog"
        puts "Woof"
        menu
    end
  puts "What animal would you like to hear (cat or dog) or type Q to quit?"
  user_input = gets.chomp
  end
end
animal_noises
=begin
def menu
  puts "What animal would you like to hear (cat or dog) or type Q to quit?"
  user_input = gets.chomp

while (user_input != "Q")
  animal_noises(user_input)
end
end

menu
=end

