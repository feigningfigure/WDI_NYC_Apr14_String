# air_conditioning function

def air_conditioner(current_temp,working,target_temp)
  if working = "yes" || "Yes" || "y" || "Y"
    working = true
  else
    working = false
  end

  if working = true && current_temp > target_temp
    puts "Turn on the A/C Please"
  elsif working = false && current_temp > target_temp
    puts "Fix the A/C now! It's hot!"
  elsif working = false && current_temp < target_temp
    puts "Fix the A/C whenever you have the chance... It's cool... Brrrrr."
  end
end
