require 'pry'

class Kiosk


  TRAINS = {
    "N" => ["Times Square", "34th", "W28th", "W23rd", "Union Square", "W8th"],
    "L" => ["8th", "6th", "Union Square", "3rd", "1st"],
    "6" => ["Grand Central", "33rd", "E28th", "E23rd", "Union Square", "Astor Place"],
    "Q" => ["Times Square", "Herald Square", "Union Square", "Canal St"]
  }

  def departing_stop(stop_name)
    if TRAINS.values.flatten.each.include? stop_name
      return stop_name
    else
      return "That is not a valid stop. Please try again."
    end
  end

  def arriving_stop(stop_name)
    if TRAINS.values.flatten.each.include? stop_name
      return stop_name
    else
      return "That is not a valid stop. Please try again."
    end
  end

  def find_train_lines(stop_name)
    lines = []
    TRAINS.each do |line, stops|
      if stops.include? stop_name
        lines << line
      end
    end
    return lines
  end

  def check_for_same_line(line_list1, line_list2)
    compatable_lines = []
    line_list1.each do |line1|
      line_list2.each do |line2|
        if line2 == line1
          compatable_lines << line2
        end
      end
    end
    if compatable_lines.length > 0
      return compatable_lines
    else
      return "This trip requires a transfer"
    end
  end

  def find_stop_number(train_line,stop_name)
    TRAINS[train_line].index(stop_name) + 1
  end

  def find_stops_between(stop1, stop2)
    (stop1.to_i - stop2.to_i).abs
  end


end