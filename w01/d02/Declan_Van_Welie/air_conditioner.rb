
def air_conditioner(functional, best_temp, temp)

    if functional == "no" && temp > best_temp
     puts "Fix the A/C now! It's hot!"
    elsif functional == "no" && best_temp > temp
     puts "Fix the A/C whenever you have a chance...It's cool...Brrrrrrrr."
    else functional == "yes" && best_temp < temp
      puts "Turn on the A/C please"

  end

end

    puts "Is the air conditioner working?"

    functional = gets.chomp

    puts "Please tell me what temperature you'd like it to be."

    best_temp = gets.chomp.to_i

    puts "Please tell me the current temperature."

    temp = gets.chomp.to_i

    air_conditioner(functional, best_temp, temp)
