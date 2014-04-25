require_relative 'helper_functions'

# # global hash of arrays of strings of station names
$trains = {
  :n => ["Time Square", "34th", "28th", "23rd", "Union Square","8th"],
  :l => ["8th", "6th", "Union Square", "3rd", "1st"],
  :s => ["Grand Central", "33rd", "28th", "23rd", "Union Square", "Astor Place"]
}

  puts "What station are you getting on?"
  start_name=gets.chomp
  puts "Which line is that? (n)-line,(l)-line,or (s)ix-line"
  line_on=gets.chomp
  puts "What station are you getting off?"
  ending_name=gets.chomp
  puts "Which line is that? (n)-line,(l)-line,or (s)ix-line"
  line_off=gets.chomp


if line_on == line_off
  puts how_many_stops(start_name, ending_name, line)
else
  puts total_stops(start_name, ending_name, line_on, line_off)
end
