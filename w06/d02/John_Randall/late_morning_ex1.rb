colors = ['mauve', 'chartreuse', 'seafoam']

# I love MAUVE!
# I love CHARTREUSE!
# I love SEAFOAM!


def m1(array)
	puts ""
	puts "I love #{array[0].upcase}!"
	puts "I love #{array[1].upcase}!"
	puts "I love #{array[2].upcase}!"
end


def m3(array)
	working_array=array
	puts ""
	array.each do |e|
		print "I love #{working_array.shift.upcase}!/n"
	end
end

def m3(array)
	working_array=array
	puts ""
	working_array.length.times do
		puts "I love #{working_array.shift.upcase}!"
	end
end




m1(colors)
m2(colors)
m3()

