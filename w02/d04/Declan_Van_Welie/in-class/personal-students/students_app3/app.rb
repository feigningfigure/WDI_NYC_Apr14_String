require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :index
  end

get '/students' do
  #The following is opening the students.txt file, and then allowing us to read the contents.
  #We don't want the following to be "write" access because we don't want people to overwrite others, etc.
students_file = File.open("./db/students.txt", "r")
students_string = students_file.read
#This will split the string at every line break, and return the values in an array
@students_array = student_string.split("\n")
erb :students
end

get '/students/new' do
erb :new
end
#New route that processes form input and accepts "POST" requests
post '/students' do

students_file = File.open("./db/students.txt", "r")
#convert to string. This will take all teh bytes in and convert them to a sereis of characters in a string.
students_string = students_file.read

#convert to an array
students_array = students_string.split ("\n")
#Retrieve the student name from the POST process
student_name = params[:student_name]
#push on the new student
students_array << student_name
end
