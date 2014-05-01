require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :index
end

get '/students' do
  students_file = File.open("./db/students.txt", "r")
  students_string = students_file.read
  @students_array = students_string.split("\n")
  erb :students
end

get '/students/new' do
  erb :new
end

# new route that processes form input
# and accepts "POST" requests
post '/students' do
   students_file = File.open("./db/students.txt", "r")
   # convert to string
   students_string = students_file.read
   # close the file for a bit
   students_file.close
   # convert to array
   students_array = students_string.split("\n")
   # retrieve the student name from the POST params
   student_name = params[:student_name]
   # push on the new student
   students_array << student_name
   # make the array into a string
   students_string = students_array.join("\n")
   # re-open the database file in "w" mode
   students_file = File.open("./db/students.txt", "w")
   # puts the string back into the original file
   students_file.puts(students_string)
   # close the file
   students_file.close
   # redirect back to the new list
   redirect "/students"
end
