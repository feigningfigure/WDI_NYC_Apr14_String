
def find_socks_in_array(array)
  num_socks = 0
  array.each do |item|
    if item == "socks"
      num_socks += 1
    end
  end
  puts "Found #{num_socks} socks"
  return num_socks
end

def inspect_thing_in_bedroom(thing)
  new_thing = 0
  if thing.class == Array
    find_socks_in_array(thing)
  elsif thing.class == Hash
      thing.each do |new_thing|
        inspect_thing_in_bedroom(new_thing)
      end
  end
end
