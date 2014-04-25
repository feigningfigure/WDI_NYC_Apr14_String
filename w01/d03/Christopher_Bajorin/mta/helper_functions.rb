# def count_stops(start_name, ending_name)



  # counts the stop between two on the same line
  #
  # takes two params:
  # 1. a starting station name
  # 2. an ending station name
  #
  # returns an integer equal to how many stops between two stops on the same line
  # if two stops are not on the same line, return nil
# end




def need_to_transfer?(start_line, ending_line)

  if start_line != ending_line
    transfer = true
  else
    transfer = false
  end
end
