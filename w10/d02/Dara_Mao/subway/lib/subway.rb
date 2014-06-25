class Subway

  SUBWAY_LINE = {
    "n_line" => ["Times Square", "34th", "28th", "23rd", "Union Square",  "8th"],
    "l_line" => ["8th", "6th", "Union Square", "3rd", "1st"],
    "six_line" => ["Grand Central", "33rd", "28th", "23rd", "Union Square", "Astor Place"]
  }

  def subway_on (line_on, station_on)

    if SUBWAY_LINE[line_on].include?(station_on) == true
      index_on = SUBWAY_LINE[line_on].index(station_on)
      return index_on
    else
      return "Please enter a valid station"
    end

  end

  def subway_off (line_off, station_off)

    if SUBWAY_LINE[line_off].include?(station_off) == true
      index_off = SUBWAY_LINE[line_off].index(station_off)
      return index_off
    else
      return "Please enter a valid station"
    end

  end

# if SUBWAY_LINE[line_on] != SUBWAY_LINE[line_off]
#    diff =  (index_on - SUBWAY_LINE[line_on].index("Union Square").abs+
#    (index_off - SUBWAY_LINE[line_off].index("Union Square").abs
# end


  def station_diff(subway_on, subway_off)
    diff = (subway_on - subway_off).abs
    return diff
  end

end


