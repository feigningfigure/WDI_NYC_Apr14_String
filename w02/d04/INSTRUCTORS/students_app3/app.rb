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
   students_file = File.open("./db/students.txt", "a")

   # append new student to file
   student_name = params[:student_name]

   # writes a new line with the student name to the file
   students_file.write "#{student_name}\n"

   # closes the file
   students_file.close

   redirect "/students"
end

# a show page that shows only one student
get "/students/:id" do
  student_id = params[:id].to_i

  students_file = File.open("./db/students.txt", "r")
  students_string = students_file.read
  students_array = students_string.split("\n")
  @student_name = students_array[student_id]

  erb :show
end
