$trains = Hash.new

$trains = {
  :n => ["TS", "34th", "28th", "23rd", "US", "8th"]
  :l => ["8", "6", "US", "3", "1"]
  :s => ["GC", "33", "28", "23", "US", "AP"]
}

# added below in morning class
journey_start_stop = []
journey_start_stop = [start_stop_prompt]
# added above in morning class

def dist_calc
  puts "what subway-line are you on? 'N', 'L', or 'Six'?"
  current_line = gets.chomp.downcase.to_sym
  puts "what is your current subway-stop location? #{$trains[current_line].join(', ')}?"
  current_stop = gets.chomp.downcase
  puts "what subway-line is your desired stop on? 'N', 'L', or 'Six'?"
  desired_line = gets.chomp.downcase.to_sym
  puts "what is your desired subway-stop location? #{$trains[current_line].join(', ')}?"
  desired_stop = gets.chomp.downcase

  # added below in morning class
  start_location = [current_line, current_stop]
  end_location = [desired_line, desired_station]
  journey = [start_location, end_location]
  # added above in morning class

  if current_line == desired_line
    puts "Ok great, just stay on the #{current_line} Line"
    # need help with below
    distance = current_line.index(desired_stop) - current_line.index(current_stop)
    puts "You are only #{distance} stops away!"
  else
    puts "Ok, you will need to transfer at US"
    distance = abs((current_line.index(current_stop) - current_line.index("US")) + abs((desired_line.index(desired_stop) - desired_line.index("US"))
    puts "You are #{distance} total stops away!"
  end
end

dist_calc


