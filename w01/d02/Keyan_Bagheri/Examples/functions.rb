def sqrt(num)
	return false if num < 0
	x = Math.sqrt(num)
	x
end

def square(num)
	num*num
end

def double_of_string(string)
	return string+string if string.class == String
end