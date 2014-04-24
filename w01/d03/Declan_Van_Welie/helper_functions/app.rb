
# def sugary
#   ["green,""red","blue"].each {|c| puts c}
# end
# sugary




# def print_matrix

#   $matrix.each do |rows|

#     rows.each do |col|
#       puts col
#       end
#     end
#   end
# arbitrarily organzied hash
#find
$bedroom = {
  :dresser => [
    "sock",
    "shirt",
    "batman costume"
  ],
  :bed => {
    :top_of => [
      "sheets",
      "socks"
      ],
    :underneath => [
      "monster,"
        "socks",
        "plastic bins"],
        :drawer => [
          "shoes,"
          "sheets"]

  }
}

# def find_socks
#   $bedroom.each do |key, value|
#     puts "#{key} : #{value}"
#     if value.class == String
#       if value.include? "socks"
#         puts "Found socks!"
#       end
#   end
# end
# find_socks

def find_socks
  $bedroom.each do |first_thing, possible_value|
    # if the possible value is nil, it means the first thing is an array.
    # Therefore, we should check if there are socks are in it.
# if value == nil && key.include?
#     puts "#{key} : #{value}"
  # if value.class == Array
  #     find_socks_in_array(value)
      # if value.class == String
    #   if value.include? "socks"
    #     puts "Found socks!"
  # elsif value.class == Hash
  #    puts "Found a hash."
  #   end

  end
end
find_socks
