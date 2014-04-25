require_relative 'classes/notebook'
require_relative 'classes/student'

declan = Student.new
declan.name = "Declan"
declan.bag << Notebook.new
# I should see one notebook