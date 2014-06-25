# n_line = ["Times Square", "34th", "28th East", "23rd East", "Union Square East",  "8th East"]
# l_line = ["8th", "6th", "Union Square", "3rd", "1st"]
# six_line = ["Grand Central", "33rd", "28th West", "23rd West", "Union Square West", "Astor Place"]



# class Mta

MTA_LINES = {
  n_line: ["Times Square", "34th", "28th East", "23rd East", "Union Square East",  "8th East"],
  l_line: ["8th", "6th", "Union Square", "3rd", "1st"],
  six_line: ["Grand Central", "33rd", "28th West", "23rd West", "Union Square West", "Astor Place"]
}

  def count_stops_one_line(on, off, line)
    answer = (MTA_LINES[line.to_sym].index(on) - MTA_LINES[line.to_sym].index(off)).abs
    return answer
  end

  def count_multi_lines(on, off, line1, line2)
    answer = (MTA_LINES[line1.to_sym].index(on) - MTA_LINES[line2.to_sym].index(off)).abs
    return answer
  end

# end

