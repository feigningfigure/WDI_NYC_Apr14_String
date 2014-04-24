puts "Is the Air Conditioner working? (Working/Not working)"
aircon = gets.chomp
puts "What the temperature right now?"
currtemp = gets.chomp.to_i
puts "What is your desired temperature?"
destemp = gets.chomp.to_i


def aircon_msg(aircon, currtemp,destemp)
  if aircon == "Working" && currtemp > destemp
    puts "Turn on the A/C Please."
  elsif aircon == "Not working" && currtemp > destemp
    puts "Fix the A/C now! It's hot!"
  elsif aircon == "Not working" && currtemp < destemp
    puts "Fix the A/C whenever you have the chance... It's cool...Brrrrrrr."
  else
    puts "Enter a valid entry."
  end
end

aircon_msg(aircon,currtemp,destemp)
