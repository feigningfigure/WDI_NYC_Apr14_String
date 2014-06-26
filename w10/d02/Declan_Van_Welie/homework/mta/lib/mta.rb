class Subway

LINES = {n_line: ["Times Square", "34th", "28th", "23rd", "Grand Central", "Union Square",  "8th"],
l_line: ["8th", "Grand Central", "6th", "Union Square", "3rd", "1st"],
six_line: ["Grand Central", "33rd", "28th", "23rd", "Union Square", "Astor Place"],
q_line: ["Grand Central", "Times Square", "Herald Square", "Union Square", "Canal St"]
}


  def self.count_stops(start_line=nil, start_station=nil, end_line=nil, end_station=nil)

      if end_station != nil
        if LINES.keys.include?(:"#{start_line}") && LINES.keys.include?(:"#{end_line}")
          starting_line = LINES[:"#{start_line}"]
          ending_line = LINES[:"#{end_line}"]
        else
          return "That line doesn't exist. Please try again."
        end

        start = starting_line.index(start_station) + 1
        ending = ending_line.index(end_station) + 1

        # calculate whether start station is closer to Union Sq. or Grand Central.
        start_union_sq = starting_line.index("Union Square") + 1
        start_grand_central = starting_line.index("Grand Central") + 1

        start_union_distance = start - start_union_sq
        start_grand_distance = start - start_grand_central

        end_union_sq = ending_line.index("Union Square") + 1
        end_grand_central = ending_line.index("Grand Central") + 1

        end_union_distance = ending - end_union_sq
        end_grand_distance = ending - end_grand_central


          if start_union_distance.abs < start_grand_distance.abs
            start_intersection = starting_line.index("Union Square") + 1
          else
            start_intersection = starting_line.index("Grand Central") + 1
          end

          if end_union_distance.abs < end_grand_distance.abs
            final_intersection = ending_line.index("Union Square") + 1
          else
            final_intersection = ending_line.index("Grand Central") + 1
          end

      beginning_distance = start_intersection - start
      beginning = beginning_distance.abs
      final_distance = final_intersection - ending
      final = final_distance.abs
      distance = final + beginning

      return distance

    else

      starting_line = LINES[:"#{start_line}"]
      start = starting_line.index(start_station) + 1
      ending = starting_line.index(end_line) + 1
      distance = ending - start

      return distance

    end

  end


end
