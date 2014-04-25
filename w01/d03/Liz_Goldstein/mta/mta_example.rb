require_relative 'helper_functions'

$trains = {
  :n => ["Times Square", "34th", "28th", "23rd", "Union Square", "8th"],
  :l => ["8th", "6th", "Union Square", "3rd", "1st"],
  :six => ["Grand Central", "33rd", "28th", "23rd", "Union Square", "Astor Place"]
}

journey_start_stop = []                   # defining a new array
journey_start_stop = start_stop_prompt    # calling helper function and bundling prompt responses


