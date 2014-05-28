ruby_colors = ["mauve", "chartreuse", "seafoam"]

ruby_colors.each (|color| puts "i love #{color}")

x = 0
while x < 3 do
	puts "i love #{ruby_colors[x]}"
	x +=1
end


for x in (0..2) do
	puts "i love #{ruby_colors[x]}"
end

until x == 3 do
	puts "i love #{ruby_colors[x]}"
	x +=1
end

x = 0
for x in (0..2) do 
	case x
	when 0
		puts "i love #{ruby_colors[x]}"
	when 1
		puts "i love #{ruby_colors[x]}"
	when 2
		puts "i love #{ruby_colors[x]}"
	end
	x +=1
end

# ruby my_each(colors) { |color| puts "I love #{color.upcase}!" }

def my_each(array)
	new_array = []

	for item in array
		if yield(item)
			new_array.push(item)
		end
	end
end

my_each(ruby_colors) do |color|
	puts "I love #{color.upcase}!"
end
