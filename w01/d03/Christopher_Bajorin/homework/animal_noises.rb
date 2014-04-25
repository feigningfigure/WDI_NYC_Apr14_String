# gets user input and responds with the sound in a string

def outputs(input)
  if input == "cat"
    puts "Meow"
  elsif input == "dog"
    puts "Woof"
  else
    puts "That is an invalid animal"
  end
  menu
end

def menu
  puts "Select and animal (cat or dog) or type Q to exit"
  user_input = gets.chomp.downcase
  if user_input == "q"
    puts "Take care!"
  else
    outputs(user_input)
  end
end

menu
