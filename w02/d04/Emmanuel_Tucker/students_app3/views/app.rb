require 'sinatra'
require 'sinatra/reloader'


get '/' do
     erb :index

end


get '/students' do

students_file = File.open("./db/students.text", "r")

@students_string = students_file.read

@students_array = students_string.split("\n")
     erb :students
end

get '/students/new' do
     erb :new
end



post '/students' do
  students_file = File.open("./db/students.txt", "r")
  # convert to string
  students_string = students_file.read
  # convert to array
  students_array = students_string.split("\n")
#retrieve the studetn namr from the POST
  # push on the new student
students_name = paramsp[:student_name]
  # push on the new student
students_array << student_name
# make the array into a string
students_string = students_array.join("\n")
# re open the database file in "w" mode
students_file =File.open("./db/students.txt", "w")
# puts the string back into the original file
students_file.puts(studnets_string)
#close the file
student_file.close
end
