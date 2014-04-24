require_relative 'classes/notebook'
require_relative 'classes/student'
require_relative 'classes/dollar'
require_relative 'classes/bread'
require_relative 'classes/peanut_butter'
require_relative 'classes/jelly'


declan = Student.new
declan.name = "Declan"
declan.bag << Notebook.new

# I should see one notebook
