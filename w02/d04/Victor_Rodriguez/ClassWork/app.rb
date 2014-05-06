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

#new route that processes form input and accepts POST requests
post 'students' do
	students_file = File.open("./db/students.txt", "r")
	#convert to string
	students_string = students_file.read
	students_array = students_string.split("\n")
	#push on the new student
	student_name = params[:student_name]
	#make the array into a new string
	students_string = students_array.join
	#re-open the database file in "w" mode
	students_file = File.open("./db/students.txt", "r")
	#puts the string back in the original file
	students_file.puts(students_string)
	#close the file
	students_file.close
	#redirect back to the new list
	redirect "/students"
end
