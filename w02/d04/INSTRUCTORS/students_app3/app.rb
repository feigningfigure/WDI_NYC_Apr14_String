require 'sinatra'
require 'sinatra/reloader'
require 'pry'

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
  @student_id = params[:id]

  students_file = File.open("./db/students.txt", "r")
  students_string = students_file.read
  students_array = students_string.split("\n")
  @student_name = students_array[@student_id.to_i]
  # binding.pry
  erb :show
end

#

get "/students/:id/delete" do
  @student_id = params[:id]
  students_file = File.open("./db/students.txt", "r")
  students_array = students_file.readlines
  students_file.close
  # remove element from collection at given index
  students_array.delete_at(@student_id.to_i)
  # reopen the file for writing from beginning
  students_file = File.open("./db/students.txt", "w")
  # rewrite entire file with new contents
  students_file.puts students_array.join
  students_file.close
  "You deleted #{@student_id}"
end

# EDIT route

get '/students/:id/edit' do
  @student_id = params[:id]

  students_file = File.open("./db/students.txt", "r")
  students_string = students_file.read
  students_array = students_string.split("\n")
  @student_name = students_array[@student_id.to_i]

  erb :edit
end

post '/students/:id/update' do
  @new_student_name = params[:student_name]

  @student_id = params[:id]
  students_file = File.open("./db/students.txt", "r")
  students_array = students_file.readlines
  students_file.close

  # remove element from collection at given index
  students_array[@student_id.to_i] = "#{@new_student_name}\n"

  # reopen the file for writing from beginning
  students_file = File.open("./db/students.txt", "w")
  # rewrite entire file with new contents
  students_file.puts students_array.join
  students_file.close
  "You deleted #{@student_id}"

  "You updated the name to #{@new_student_name}"
end
