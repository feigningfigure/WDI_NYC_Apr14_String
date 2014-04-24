def count_stops(start_name, ending_name)
  # counts the stop between two on the same line
  #
  # takes two params:
  # 1. a starting station name
  # 2. an ending station name
  #
  # returns an integer equal to how many stops between two stops on the same line
  # if two stops are not on the same line, return nil
end

def need_to_transfer?(start_name, ending_name)
  # deteremines if a transfer is needed
  #
  # takes two params:
  # 1. a station name
  # 2. another station name
  #
  # returns true if transfer is need, or false for all other cases
end





  puts "You have #{distance} stops to go!"

  $n_line.index(current)
  $n_line.index(desired_stop)


def count_stops(start_name, ending_name)
  # counts the stop between two on the same line
  #
  # takes two params:
  # 1. a starting station name
  # 2. an ending station name
  #
  # returns an integer equal to how many stops between two stops on the same line
  # if two stops are not on the same line, return nil
end

def need_to_transfer?(start_name, ending_name)
  # deteremines if a transfer is needed
  #
  # takes two params:
  # 1. a station name
  # 2. another station name
  #
  # returns true if transfer is need, or false for all other cases
end

$n_line = Array.new
$n_line = ["TS", "34", "28", "23", "US", "8"]

def dist_calc
  puts "what is your current subway-stop location?"
  current = gets.chomp
  $n_line.index(current)
  puts "what is your desired subway-stop location?"
  desired = gets.chomp
  $n_line.index(desired)
  distance = $n_line.index(desired) - $n_line.index(current)
  puts "You have #{distance} stops to go!"
end

dist_calc


$trains = {
  :n_line => ["TS", "34", "28", "23", "US", "8"]
  :l_line => ["8", "6", "US", "3", "1"]
  :six_line => ["GC", "33", "28", "23", "US", "AP"]
}


