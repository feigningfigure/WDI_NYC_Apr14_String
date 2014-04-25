require_relative 'classes/student'
require_relative 'classes/group'
require_relative 'classes/scrumr'
require_relative 'db/students'

# the job of this file is to run my working app when I want to use the app

puts "Starting App..."
$app = Scrumr.new
$app.start
puts "Completed the starting process"
print "The Number of groups is: "
puts $app.number_of_groups

