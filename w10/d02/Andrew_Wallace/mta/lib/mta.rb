
class Train

  attr_accessor :start_line, :end_line, :start, :end

    def initialize
      @start_line = start_line
      @stop_line = stop_line
      @stop1 = stop1
      @stop2 = stop2

    end

  def lines
   n = ["Times Square", "34th", "28th", "23rd", "Union Square", "8th"]
   l = ["8th", "6th", "Union Square", "3rd", "1st"]
   six = ["Grand Central", "33rd", "28th", "23rd", "Union Square", "Astor Place"]
  end



  def stop_count(line1, line2, stop1, stop2)
    unless $trains[line.to_sym].index(stop1).nil? || $trains[line.to_sym].index(stop2).nil?
      ($trains[line.to_sym].index(stop1) - $trains[line.to_sym].index(stop2)).abs
    else
      return "Incorrect entry"
    end

  end


  def detect_transfer(line1, line2)
    if $trains[line1.to_sym]
    end
  end

end
