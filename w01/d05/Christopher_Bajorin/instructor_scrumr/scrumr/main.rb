require_relative 'classes/student'
require_relative 'classes/group'
require_relative 'classes/scrumr'
require_relative 'db/students'

# runs the working app when I want to use it
puts "Starting app..."
app = Scrumr.new
app.start
puts "Loaded"
print "The number of groups is: "
puts app.number_of_groups
