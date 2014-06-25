n_line = ["Times Square", "34th", "28th N", "23rd N", "Union Square", "8th N"]
l_line = ["8th L", "6th", "Union Square", "3rd", "1st"]
six_line = ["Grand Central", "33rd", "28th Six", "23rd Six", "Union Square", "Astor Place"]


class Subway

  def location(station_name, line)
    station_index = line.index(station_name)
    return station_index
  end

  # def ending(destination, destination_line_array)
  #   end_location = destination_line_array.index(destination)
  #   return end_location
  # end

  def distance(station1, line1, station2, line2)
    stops_array = []
    starting_station = location(station1, line1)
    ending_station = location(station2, line2)
    if line1 == line2
      (starting_station+ending_station).abs
    else
      length1 = (starting_station - line1.index("Union Square")).abs
      stops_array << line1.slice(starting_station..length1)

      length2 = (ending_station - line2.index("Union Square")).abs
      stops_array << line2.slice(ending_station..length2)

      return stops_array.flatten.uniq.length-1
    end
  end

end



