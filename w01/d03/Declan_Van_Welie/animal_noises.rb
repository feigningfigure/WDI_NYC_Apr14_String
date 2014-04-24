def animal_noise(animal)
    animal = "default"
    case animal
    when "cat"
      puts "Meow!"
      menu
    when "dog"
      puts "Woof"
      menu
    when "q"
      puts "Goodbye"
    end

end
     def menu
        puts "What animal would you like to hear, or type 'q' to quit."
        animal = gets.chomp

        while  (animal != "q")
          return animal_noise(animal)
        end
      end
menu
