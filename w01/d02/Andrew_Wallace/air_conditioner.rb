def conditioner_check()
  puts "What is the current temperature?"
  temp = gets.chomp.to_i
  puts "Is the air conditioner working? (Y)es / (N)o"
  status = gets.chomp.upcase
  puts "What is the desired temperature?"
  desired = gets.chomp.to_i

# Simplify entered values for comparison
  hot = temp > desired
  cold = temp < desired
  broken = status == "N"
  working = status == "Y"

# Comparison scenarios
  if hot && broken
    print "Fix the A/C now! It's hot!"
  elsif cold && broken
    print "Fix the A/C whenever you have the chance...It's cool....Brrrrrrr."
  elsif temp != desired && working
    print "Change the temperature dummy!"
  else
    print "Something you entered is incorrect.  Please try again."
  end
end

conditioner_check()
