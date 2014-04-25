require_relative 'helper_functions'

# global hash of arrays of strings of station names
$trains = {
  :n_line => ["Times Square", "34th", "W28th", "W23rd", "Union Square", "W8th"],
  :l_line => ["8th", "6th", "Union Square", "3rd", "1st"],
  :six_line => ["Grand Central", "33rd", "E28th", "E23rd", "Union Square", "Astor Place"],
  :q_line => ["Times Square", "Herald Square", "Union Square", "Canal St"]
}

interact_with_mta_kiosk
