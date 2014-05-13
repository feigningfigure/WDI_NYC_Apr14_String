# require 'sinatra'
# require 'sinatra/reloader'

# Create a new file and write to it  
File.open('test.rb', 'w') do |f2|  
  binding.pry
    # use "\n" for two lines of text  
      f2.puts "Created by Satish\nThank God!"  
end  
  students_file = File.open("test.rb", "r")
    students_string = students_file.read
      @students_array = students_string.split("\n")
