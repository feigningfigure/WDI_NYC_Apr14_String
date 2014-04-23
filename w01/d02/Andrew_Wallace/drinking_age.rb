def get_age()
  puts "How old are you?"
  age = gets.chomp.to_i
  if age == 0
    print "You sure you haven't already been drinking?"
  elsif age >= 21
    print "Drink up there friend!"
  elsif age < 21
    print "You aren't old enough!"
    end
end

get_age
