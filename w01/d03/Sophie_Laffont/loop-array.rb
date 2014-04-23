# LOOPING THROUGH AN ARRAY


# array = ["monday","tuesday","wednesday","thursday"]


# for item in array
# puts item
# end

=begin - THIS IS THE SAME THING AS THE ABOVE
for index in (0..array.length)
puts array[index]
end
=end


hash = {monday: "day 1" , tuesday: "day 2" , wednesday: "day 3" ,
  thursday: "day 4", friday: "day 5" }
hash.each do |k, v|
  puts "On #{k.capitalize} it is #{v} of the week."
end
