# is the AC functional?
# if temp is higher than desired, "Turn on the A/C Please"
# if non-functional AND above desired temp, "Fix the A/C now! It's hot!"
# If the A/c is nonfunctional the tep is below desired, display "Fix the A/C whenever you have a chance... it's cool... Brrrr."

def ac(functioning, temp)
if functioning == false && temp > 78
  puts "Fix the AC Now! It's hot!"
elsif functioning == true && temp > 78
  puts "Turn on the A/C Please."
elsif functioning == false && temp < 78
  puts "Fix the A/C whenever you have the chance... It's cool...Brrrrrrr."
end
end

ac(true, 80)
ac(false, 80)
ac(false, 60)
