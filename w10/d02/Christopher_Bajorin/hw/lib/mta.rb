n_line = ["Times Square", "34th", "28th-N", "23rd", "Union Square",  "8th"]
l_line = ["8th", "6th", "Union Square", "3rd", "1st"]
six_line = ["Grand Central", "33rd", "28th-6", "23rd", "Union Square", "Astor Place"]

# Union square intersection

class Subway

  def enter(startStation, startLine)
    @station_start = startStation
    @line_start = startLine
    @start_index = @line_start.index(@station_start)
    return "You're at #{@station_start}"
  end

  def exit(exitStation, exitLine)
    @station_exit = exitStation
    @line_exit = exitLine
    @end_index = @line_exit.index(@station_exit)
    return "You will exit at #{@station_exit}"
  end

  # def start()
  #   return @start_index
  # end

  # def end()
  #   return @end_index
  # end

  def length()
    union_start = @line_start.index("Union Square")
    union_end = @line_exit.index("Union Square")

    stops = ((@start_index - union_start).abs + (@end_index - union_end).abs)
    return stops
  end
end
