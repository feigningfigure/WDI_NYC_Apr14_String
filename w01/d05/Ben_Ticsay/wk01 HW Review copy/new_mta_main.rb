require_relative "new_mta_helperfunctions"


$trains = {
  :n_line => ["Times Square", "34th", "28th", "23rd", "Union Square", "8th"],
  :l_line => ["8th", "6th", "Union Square", "3rd", "1st"],
  :six_line => ["Grand Central", "33rd", "28th", "23rd", "Union Square", "Astor Place"]
}


gather_user_inputs
count_stops