# $x = "hi there"
# def my_func
#   puts "hello!"
# end

# def difference_between(num1, num2)
# num1 - num2
# end

def find_socks_in_array(array)
  array.include? "socks"
  puts "Found #{num_socks} socks!"
end

OR

def find_socks_in_array(array)
  num_socks = 0
  array.each do |item|
    it item == "socks"
    num_socks += 1
  end
end
puts "Found #{num_socks} socks!"
  return num_socks
end


def inspect_thing_in_bedroom(thing)
    if thing.class == Array
      find_socks_in_array(thing)
    elsif thing.class == Hash
      thing.each do |key, value|
        inspect_thing_in_bedroom(value)
    #Check if something is a hash or an array
  end
