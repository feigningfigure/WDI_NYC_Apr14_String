require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :index
end

get '/students' do
  students_file = File.open("./db/students.txt", "r")
  students_string = students_file.read
  @students_array = students_string.split(' ')

  erb :students
end

get '/students/new' do
  erb :new
end

post '/students' do
  students_file = File.open("./db/students.txt")
    # convert to string
  students_string = students_file.read
    # convert to array
  students_array = students_string.split('\n')
    # retrieve the student name from the POST
  student_name = params[:student_name]
    #push on the new student
  students_array << student_name
    #array to string
  students_string = students_array.join("\n")
    # re-open file in "w" mode
  students_file = File.open("./db/students.txt", "w")
    #puts the string back to the original file
  students_file.puts(students_string)
    #close the file
  students_file.close

  redirect "/students"

end

post '/students' do
  students_file = File.open("./db/students.txt")
  students_string = students_file.read
  students_array = students_string.split('\n')
  student_name = params[:student_name]

    #delete student

  students_array.each do |student|
    if student = student_name

      #stuff



  students_string = students_array.join("\n")
  students_file.puts(students_string)
  students_file.close
  redirect "/students"
end
