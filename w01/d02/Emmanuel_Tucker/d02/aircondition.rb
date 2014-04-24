print "what the current temperature?"
curr_temp = gets.chomp.to_i
#variable ac_func is boolean

print "is the ac operating? yes or no"
working_ac= gets.chomp.to_i

print "what is the desired temperature?"
des_temp = gets.chomp.to_i

def airconditioning (curr_temp,working_ac,des_temp)
  if temp >des_temp && working_ac =="yes"
    puts "Turn on the a/c"
  elsif temp >des_temp && working_ac =="no"
    puts "fix the a/c now"
  elsif temp >des_temp && working_ac =="no"
    puts "Fix the a/c asap"
  end
end

airconditioning (temp)












#function to check whether A/c is functional
#desired temperature= 75 or below
