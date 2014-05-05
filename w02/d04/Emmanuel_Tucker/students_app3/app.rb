require 'sinatra'
require 'sinatra/reloader'


get '/' do
     erb :index

end


get '/students' do
     students_file = File.open("./db/students.text", "r")
     @students_string = students_file.open("./db/students.text")
     @students_array = students_string.
     erb :students
end
