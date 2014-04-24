$trains = Hash.new

$trains = {
  :n_line => ["TS", "34th", "28th", "23rd", "US", "8th"]
  :l_line => ["8", "6", "US", "3", "1"]
  :six_line => ["GC", "33", "28", "23", "US", "AP"]
}

def dist_calc
  puts "what is your current subway-stop location?"
  current_stop = gets.chomp
  puts "what subway-line are you on?"
  current_line = gets.chomp.to_sym
  puts "what is your desired subway-stop location?"
  desired_stop = gets.chomp
  puts "what subway-line is your desired stop on?"
  desired_line = gets.chomp.to_sym
  if current_line == desired_line
    puts "Ok great, just stay on the #{desired_line}"
    distance = current_line.index(desired_stop) - current_line.index(current_stop)
    puts "You are only #{distance} stops away!"
  else
    puts "Ok, you will need to transfer at US"
    distance = abs((current_line.index(current_stop) - current_line.index("US")) + abs((desired_line.index(desired_stop) - desired_line.index("US"))
    puts "You are #{distance} total stops away!"
  end
end

dist_calc


