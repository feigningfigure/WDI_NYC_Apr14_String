require_relative 'helper_functions'

# global hash of arrays of strings of station names
$trains = {
  :n_line => ["Times Square", "34th", "28th", "23rd", "Union Square", "8th Street"],
  :l_line => ["8th Ave","6th Ave","Union Square","3rd Ave", "1st Ave"],
  :six_line => ["Grand Central", "33rd", "28th street", "23rd street", "Union Square", "Astor Place"]
}


def count_my_train_stops(start_line, start_stop, end_line, end_stop)
  beginning_line = line_picker(start_line)
  ending_line = line_picker(end_line)
  if need_to_transfer?(beginning_line, ending_line)
    leg_1 = how_many_stops(start_stop,"Union Square", beginning_line)
    leg_2 = how_many_stops("Union Square",end_stop, ending_line)
    return leg_1 + leg_2
  else
    how_many_stops(start_stop,end_stop,ending_line)
  end

end

def line_picker(line)
  line = line.to_s.downcase
  case line
  when "l"
    return :l_line
  when "n"
    return :n_line
  when "6", "six", "six line"
    return :six_line
  end
end



# test_n_line = ["Times Square", "34th", "28th", "23rd", "Union Square", "8th Street"]

# # test_six_line = ["Grand Central", "33rd", "28th", "23rd", "Union Square", "Astor Place"]

#  ["Times Square", "34th", "28th", "23rd", "Union Square", "8th Street"].each_with_index do |v,i|
#   if v == "Union Square"
#     puts i
#   end
# end


#  if need_to_transfer?(start_name, ending_name)
#   # 1st line stops till Union Square
#   # 2nd line stops till Union Square
#   # trip length = 1st + 2nd
#     how_many_stops("Union Square", ending_name, train_line)

