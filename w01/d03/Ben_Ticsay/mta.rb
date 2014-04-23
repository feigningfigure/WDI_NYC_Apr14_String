require_relative 'helper_functions_mta'

$trains = {
  :n_line => ["Times Square", "34th", "28th", "23rd", "Union Square", "8th"],
  :l_line => ["8th", "6th", "Union Square", "3rd", "1st"],
  :six_line => ["Grand Central", "33rd", "28th", "23rd", "Union Square", "Astor Place"]
}

puts "Enter starting stop:"
start_stop = gets.chomp
puts "Enter end stop:"
end_stop = gets.chomp	

puts count_stops(start_stop, end_stop)
