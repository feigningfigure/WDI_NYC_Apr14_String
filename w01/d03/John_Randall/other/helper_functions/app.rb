# require_relative 'helper_functions.rb'

# # def my_app
# # 	x=10
# # 	["green", "red", "blue"].each do |color|
# # 		x +=1
# # 		p [color, x]
# # 	end
# # end

# # my_app()


# def sugary
# 	["green", "red", "blue"].each { |c| puts x } 
# end

# # my_app()


def unpack(thing)
	if thing.class == Hash
		thing.each do |k,v|
			unpack(v)
		end
	elsif thing.class == Array
		thing.each do |item|
			unpack(item)
		end
	elsif thing.class == String
		if test_for_socks(thing)==true
			puts "found a sock!"
		end
	else
		puts "Hashs, Arrays, and Strings only please"
	end
end



def test_for_socks(x)
	if x == "socks"
		puts "found some socks!"
		return true
	end
end