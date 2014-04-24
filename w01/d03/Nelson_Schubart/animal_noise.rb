
def animal_noise
    user_input = "default"
    while (user_input != "q")
      case
        when "c"
          puts "Meow!"
        when "d"
          puts "Woof!"
      end
    end
  puts "what animal sounds do you want to hear? (c)at or (d)og, otherwise (q)uit program"
  user_input = gets.chomp
end
end

animal_noises

