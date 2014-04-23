def animal_noises()

user_input = "default" #anything the person writes in

    while (user_input != "Q")
        case user_input
            when "cat"
                puts "Meow Meow!"
            when "dog"
                puts "Woof woof!"
            end
      puts"choose cat, dog, or bird or type Q to quit"
      user_input = gets.chomp
    end
end

animal_noises

