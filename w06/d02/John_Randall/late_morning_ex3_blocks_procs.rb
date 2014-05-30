colors = ['mauve', 'chartreuse', 'seafoam']




# my_each(colors) { |color| puts "I love #{color.upcase}!" }

def my_each(input_array)		#also accepts a block
	for item in input_array			#enumerate item
		yield(item)						#process the block
	end
end

my_each(colors) { |color| puts "I Love #{color.upcase}!"}



def call_block_this_many_times(x)
	counter = 0
	while counter < x
		yield
		counter += 1
	end
	
end

call_block_this_many_times(10){puts"counting"}