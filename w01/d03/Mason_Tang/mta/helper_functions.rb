 def count_stops(dep_station, arv_station)
#   # counts the stop between two on the same line
#   #
#   # takes two params:
#   # 1. a starting station name
#   # 2. an ending station name
#   #
#   # returns an integer equal to how many stops between two stops on the same line
#   # if two stops are not on the same line, return nil
  def return_index (x, y)
      x.each do |key, value|
        value.each do |array_value|
          if array_value == y
              return value.index(array_value)
          end
        end
      end
  end
  count = return_index($trains, dep_station) - return_index($trains, arv_station)
  return count.abs

end

# def need_to_transfer?(start_name, ending_name)
#   # deteremines if a transfer is needed
#   #
#   # takes two params:
#   # 1. a station name
#   # 2. another station name
#   #
#   # returns true if transfer is need, or false for all other cases


# end

# def find_stops(dep_station, arv_station)
#    $trains.index[:n_line] do |item, index|
#     puts "#{index}"
#   end
# end


# def inspect_stops(stop)
#   if stop.class == Array
#     amount_stops(stop)
#   end
# end

