$trains = {
  :n_line => ["TS", "34", "28", "23", "US", "8"]
  :l_line => ["8", "6", "US", "3", "1"]
  :six_line => ["GC", "33", "28", "23", "US", "AP"]
}

$n_line = ["TS", "34", "28", "23", "US", "8"]
$l_line = ["8", "6", "US", "3", "1"]
$six_line = ["GC", "33", "28", "23", "US", "AP"]

def dist_calc
  puts "what is your current subway-stop location?"
  current_stop = gets.chomp
  puts "what subway-line are you on?"
  current_line = gets.chomp
  puts "what is your desired subway-stop location?"
  desired_stop = gets.chomp
  puts "what subway-line is your desired stop on?"
  desired_line = gets.chomp
  if current_line = desired_line
      puts "Ok great, just stay on the #{desired_line}"
      distance = $current_line.index(desired_stop) - current_line$.index(current_stop)
end

dist_calc
