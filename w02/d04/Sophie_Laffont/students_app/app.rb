require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :index
end

get '/students' do
  students_file = File.open("./db/students.txt", "r")
  @students_string = students_file.read 
  @students_array = students_string.split("\n")
  erb :students
  
end

get '/students/new' do
erb :new
end