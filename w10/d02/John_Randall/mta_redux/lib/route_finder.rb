
# ## Homework

# `We'll be revisiting the MTA homework from w01/d03, using our new test-driven development skills to make it less of a hassle to implement.`

# - Start from scratch, adhering as closely as possible to the "test-first" style of development

# - Try to be as thorough as possible in handling different inputs, errors, and outputs.

# - You might need to look up new RSpec matchers to write some tests, so make sure you have the documentation on hand:

#   [rspec github](https://github.com/rspec/rspec-core)



# `Below are the original instructions for MTA:`

# ### Week01-Day03

# ### 1. MTA - The NYC Subway System

# - There are 3 subway lines:
#   - The N line has the following stops: Times Square, 34th, 28th, 23rd, Union Square, and 8th
#   - The L line has the following stops: 8th, 6th, Union Square, 3rd, and 1st
#   - The 6 line has the following stops: Grand Central, 33rd, 28th, 23rd, Union Square, and Astor Place.
#   - All 3 subway lines intersect at Union Square, but there are NO other intersection points.
#     - For example, this means the 28th stop on the N line is different than the 28th street stop on the 6 line, so you'll have to differentiate this when you name your stops in the arrays.
# - The program takes the line and stop that a user is getting on at and the line 
# and stop that user is getting off at and prints the total number of stops for the trip.

# ---

# #### Hints: 
# - Get the program to work for a single line before trying to tackle multiple lines.
# - Consider diagramming the lines by sketching out the subway lines and their stops and intersection.
# - Make subway lines keys in a hash, while the values are an array of all the stops on each line.
# - Make sure the stops that are the same for different lines have different names (i.e. 23rd on the N and on the 6 need to be differentiated)
# - Do not begin with implementing a user interface.  Begin with implementing the logic that calculates the distance between two stops in the subway system.

# ---

# ### Non-Required:

# #### Back-End Bonus:
# - Implement input validation
#   - User MUST enter a line and station that is IN the subway network
#   - If the user enters something else, your program should handle it gracefully
# - Add the following line without making major modifications to your code: 
#   - The Q line has the following stops: Times Square, Herald Square, Union Square, Canal St.
# - Allow trains to have multiple intersection points
# - Google 'ruby array intersect'.  Is there away that you might take advantage of ruby's ability to determine shared values between arrays?


# ####Final Thoughts:
# - Will your code work if/when we add ALL of NYC's subway lines?




class RouteFinder
  require 'awesome_print'

  def initialize(input_hash)
    @routes = input_hash
  end
  
  # @routes = {
  #   n_line: ['Times Square', '34th', '28th_n', '23rd_n', 'Union Square', '8th'],
  #   l_line: ['8th', '6th', 'Union Square', '3rd', '1st'],
  #   six_line: ['Grand Central', '33rd', '28th_six', '23rd_six', 'Union Square', 'Astor Place']
  # }

  def count_stops(input_hash)
    puts "RUNNING METHOD count_stops"
    start_station = input_hash[:start_station]
    end_station   = input_hash[:end_station]

    if detect_shared_line(input_hash) == :transfer_needed
      return count_stops_with_transfer(input_hash)
    else
      return count_stops_on_undesignated_line(input_hash)
    end
  end


  def count_stops_with_transfer(input_hash)
    puts "RUNNING METHOD count_stops_with_transfer"
    start_station = input_hash[:start_station]
    end_station   = input_hash[:end_station]
    
    start_station_lines = detect_lines(start_station)
    end_station_lines = detect_lines(end_station)

    transfer_station = find_transfer_station_between_two_lines(start_station_lines[0], end_station_lines[0])
    
    leg1_count = count_stops_on_designated_line({line: start_station_lines[0], start_station: start_station, end_station: transfer_station })
    leg2_count = count_stops_on_designated_line({line: end_station_lines[0], start_station: transfer_station, end_station: end_station })

    total_count = leg1_count+leg2_count

    return total_count
  end

  def find_transfer_station_between_two_lines(line_a, line_b)
    puts "RUNNING METHOD find_transfer_station_between_two_lines"
    # puts 'METHOD find_transfer_station_between_two_lines'
    # puts "stations for #{line_a} are #{@routes[line_a]}"
    # puts "stations for #{line_b} are #{@routes[line_b]}"
    shared_stations = @routes[line_a] & @routes[line_b]
    
    # puts "shared stations are #{shared_stations}"

    if shared_stations.length == 1
      return shared_stations[0]
    else
      return :multiple_transfer_options
    end
  end

  def count_stops_on_undesignated_line(input_hash)
    puts "RUNNING METHOD count_stops_on_undesignated_line"
    hash = input_hash
    hash[:line] = detect_shared_line(input_hash)

    single_line_route_length = count_stops_on_designated_line(hash)

    return single_line_route_length
  end

  def detect_shared_line(input_hash)
    puts "RUNNING METHOD detect_shared_line"
    start_station = input_hash[:start_station]
    end_station   = input_hash[:end_station]

    start_station_lines = detect_lines(start_station)
    end_station_lines   = detect_lines(end_station)

    shared_lines = start_station_lines & end_station_lines

    if shared_lines.length == 1
      return shared_lines[0]
    else
      puts "ERROR"
      return :transfer_needed
    end
  end


  def count_stops_on_designated_line(input_hash)
    puts "RUNNING METHOD count_stops_on_designated_line"
    line          = input_hash[:line]
    start_station = input_hash[:start_station]
    end_station   = input_hash[:end_station]

    start_station_index = @routes[line].index(start_station)
    end_station_index = @routes[line].index(end_station)

    direction = direction(start_station_index, end_station_index)

    case direction
    when :inbound 
      single_line_route_length = end_station_index    - start_station_index
    when :outbound
      single_line_route_length = start_station_index  - end_station_index
    end
    
    return single_line_route_length
  
  end


  def direction(start_station_index, end_station_index)
    puts "RUNNING METHOD direction"
    if start_station_index    < end_station_index
      direction = :inbound
    elsif start_station_index > end_station_index
      direction = :outbound
    end

    return direction

  end

  def detect_lines(station)
    puts "RUNNING METHOD detect_lines"
    lines_that_include_station = []
    @routes.keys.each do |key|
      # puts "testing #{key} for #{station}"
      if @routes[key].include?(station)
        lines_that_include_station << key
      end
    end
    return lines_that_include_station
  end

end






