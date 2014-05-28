colors = ["mauve", "charteuse", "seafoam"]

#1 
colors.each do |color|
	puts "I love #{color}"
	
end

#2 

puts


for color in colors
  puts "I love #{color}"
end

puts "3"

#3

for i in colors
  puts "I got #{i}"
end

#4 
puts "4"

colors.select { |e| puts "I love " + e }

puts "5"

colors.map { |e| puts "I love " + e }



# [1, 2, 3].each do |item| puts("Iterating over #{item}...") end

# [1, 2, 3] is an array of integers
# .each is something connected to Enumarable (?)

# do is a special word in ruby for starting block

# |item| is a symbolic representation of the element inside iterated object

# puts is a method put string 




# Write your own my_each() method such that this code:

# ruby my_each(colors) { |color| puts "I love #{color.upcase}!" }

# Returns the exact same output as the original Enumerable.each():

# I love MAUVE!
# I love CHARTREUSE!
# I love SEAFOAM!
puts "6"
def my_each(colors)

	new_array = []

	for item in colors
		yield (item)
	end
	
	return new_array
end


my_each(colors) do |color|
	puts "I love #{color.upcase}!"
end

puts "example 15"

#yield means block.call
def call_block_five_times
	yield()
	yield()
	yield()
	yield()
	yield()
end

call_block_five_times do 
	puts "I am in a block, wow"
end









