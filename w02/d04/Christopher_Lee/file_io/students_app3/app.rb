require 'sinatra'
require 'sinatra/reloader'

get '/' do
  "Hello World!"
  erb :index
end

#when you go to this route, go to this file and read these names onto this page
get '/students' do
  students_file = File.open("./db/students.txt", "r")
  #we want this file to be a string
  @students_string = students_file.read
  #we want a students array that is nice and split up on space
  @students_array = @students_string.split("\n")
  erb :students
end

get '/students/new' do
  erb :new
end

# what we want is a page with a form where people can enter into a form
# and add it to our list

#new route that processes form input and accepts POST requests
post '/students/new' do
  students_file = File.open("./db/students.txt", "r")
  # convert to string
  students_string= students_file.read
  #close the filed for a bit
  students.file.close
  # convert to array
  students_array = students_string.split("\n")
  # retreive the student name from POST
  student_name = params[:student_name]
  # push on the new student
  students_array << student_name
  # make the array into a string
  student_string = students_array.join("\n")
 # re-optn the database file in "w" mode
  students_file = File.open("./db/students.txt", "w")
   # puts the string back into the original file
  student_file.puts students_string
  #close the file
  students_file.close
  #redirect back to the list
  redirect "/students"
  erb :new
end
