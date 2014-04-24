#require_relative 'helper_functions'

# global hash of arrays of strings of station names
$trains = {
  :n_line => ["Times Sq", "34th", "28th", "23rd", "Union Sq", "8th"],
  :l_line => ["8th St", "6th", "Union Sq", "3rd", "1st"],
  :six_line => ["Grand Central", "33rd", "28th St", "23rd St", "Union Sq", "Astor Pl"]
}

def count_stops(first_stop, last_stop)
  #if $trains [:n_line].include? first_stop && last_stop == true
  stops = $trains [:n_line].index(last_stop) - $trains [:n_line].index(first_stop)
  puts "#{stops.abs} stop/s until destination"
##return nil
end
end

count_stops("Grand Central", "34th")
