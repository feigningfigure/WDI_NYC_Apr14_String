$trains = {
  :n => ["Times Square", "34th", "28th", "23rd", "Union Square", "8th"],
  :l => ["8th_s", "6th", "Union Square", "3rd", "1st"],
  :s => ["Grand Central", "33rd", "28th_s", "23rd_s", "Union Square", "Astor Place"]
}

#p $trains[:n].index("34th")

# def need_to_transfer?(start_name, ending_name)
#   indexes = []
#   indexes << $trains[:n].index(start_name)
#   indexes << $trains[:l].index(start_name)
#   indexes << $trains[:s].index(start_name)
#   indexes << $trains[:n].index(ending_name)
#   indexes << $trains[:l].index(ending_name)
#   indexes << $trains[:s].index(ending_name)
#   indexes.compact
#   indexes[1].abs - indexes[0].abs
# end

#p need_to_transfer?("Times Square", "28th")
def need_to_transfer?(start_name, ending_name)

  if $trains[:n].include?(start_name) && $trains[:n].include?(ending_name)
    false
  elsif $trains[:l].include?(start_name) && $trains[:l].include?(ending_name)
    false
  elsif $trains[:s].include?(start_name) && $trains[:s].include?(ending_name)
    false
  else 
    true
  end

end
p need_to_transfer?("Times Square", "28th")
p need_to_transfer?("Times Square", "3rd")
# 	$trains.each do |key, value|
# 		indexes = []
# 	start_index = value.index(start_name)
# 	ending_index = value.index(ending_name)
# 	indexes << start_index
# 	indexes << ending_index
# 	p ending_index.to_i - start_index.to_i
# 	end
  
# end




# start_name = "Times Square"
# end_name = "28th"
# $trains.each do |key, value|
#   first_index = []
#   second_index = []
#     p value.index("start_name")
#     #p first_index.flatten.compact
#     p value.index("end_name")
#     #p second_index.flatten.compact
#       #p first = i.index("28th")   


#p need_to_transfer?("Times Square", "28th")












# if $trains[:n].include?("Times Square") && $trains[:n].include?("1st")

# 	p "one"

# else 

# 	p "two"

# end


