while condition
  def animal_noises
  user_input = "default"
  while (user_input = "q")
    case noise
      when cat
        puts "Meow!"
      when dog
        puts "Woof!"
      when cow
        puts "Moooh!"
      when horse
        puts "Eheheheeeh!"
      when bird
        puts "chirp! chirp!"
    end
  print "What animal would you like to hear?"
  user_input = gets.chomp
  end
animal_noises
end
