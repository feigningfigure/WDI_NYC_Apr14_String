require_relative 'classes/student'
require_relative 'classes/group'
require_relative 'classes/scrumr'
require_relative 'db/students'

require 'pry'

#the job of this file is to run my workin gapp when I want to use the app

puts "Starting app..."
app = Scrumr.new
app.start
puts "Completed the starting process"
print "the number of groups is: "
puts app.number_of_groups
