  puts "What animal would you like to hear? Q to quit."

  animal = gets.chomp.downcase
  while (animal != "q")

    case animal
      when "cat"
        puts "Meow"
      when "dog"
        puts "Woof"
    end
  puts "What animal would you like to hear? Q to quit."
  animal = gets.chomp.downcase
  end
