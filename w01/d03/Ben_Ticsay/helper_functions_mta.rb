def count_stops(start_stop, end_stop)

def station_index (x, y)
    x.each do |key, value|
      value.each do |array_value|
        if array_value == y
            return value.index(array_value)
        end
      end
    end
end

count = station_index($trains, start_stop) - station_index($trains, end_stop)
return count.abs
end

