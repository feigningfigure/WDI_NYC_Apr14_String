require_relative 'helper_functions'

# global hash of arrays of strings of station names
$trains = {
  :n_line => ["Times Square", "34th", "28th", "23rd", "Union Square", "8th Street"],
  :l_line => ["8th Ave","6th Ave","Union Square","3rd Ave", "1st Ave"],
  :six_line => ["Grand Central", "33rd", "28th street", "23rd street", "Union Square", "Astor Place"],
  :q_line => ["Times Square", "Herald Square", "Union Square", "Canal St"]
}

puts count_my_train_stops
