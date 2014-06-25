class Subway

  SUBWAY_LINE = {
    "n_line" => ["Times Square", "34th", "28th", "23rd", "Union Square",  "8th"],
    "l_line" => ["8th", "6th", "Union Square", "3rd", "1st"],
    "six_line" => ["Grand Central", "33rd", "28th", "23rd", "Union Square", "Astor Place"]
  }

  def station_diff (line_on, station_on, line_off, station_off)
      index_on = SUBWAY_LINE[line_on]
      index_off = SUBWAY_LINE[line_off]

    if index_on.include?(station_on) == true && index_off.include?(station_off) == true

      if index_on != index_off
         diff =  (index_on.index(station_on) - index_on.index("Union Square")).abs+
         (index_off.index(station_off) - index_off.index("Union Square")).abs
      else
         diff = (index_on.index(station_on) - index_off.index(station_off)).abs
      end
      return diff
    else
      return "Please enter a valid station"
    end

  end

end


