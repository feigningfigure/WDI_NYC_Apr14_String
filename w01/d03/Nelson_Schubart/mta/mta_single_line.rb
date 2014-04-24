
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


