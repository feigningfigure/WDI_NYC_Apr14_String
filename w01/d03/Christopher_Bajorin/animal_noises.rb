# gets user input and responds with the sound in a string

def animals
  input = "stuff"
  while ""
    case input
      when "cat"
          puts "Meow!"
          menu
      when "dog"
          puts "Woof"
          menu
    end
end

def menu
  puts "Select an animal (cat or dog) or type Q to quit"
  user_input = gets.chomp
  while (user_input != "Q")
    animals(user_input)
  end

end

menu
