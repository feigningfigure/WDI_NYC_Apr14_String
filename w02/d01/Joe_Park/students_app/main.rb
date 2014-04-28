require 'sinatra'
require 'sinatra/reloader'

# this loads a gloable variable called $students which is an array of hashes
require_relative "db/students"

#home path
get "/" do
	"<h1>Welcome to Students App</h1>"
end

#puts in sinatra puts it into the server log
#to_s to put it on page
get '/students' do
	puts "THIS IS YOUR SERVER LOG!\n#{$students}"
	$students.to_s
end

get '/students/:id' do
	id = params[:id].to_i
	if id > $students.length
		"No student with that ID!"
	else
		#$students[id]['Name']
		#if you want only the name
		$students[id].to_s
	end
end

#student name search
get '/students/by_name/:name' do
	name = params[:name]
	results = []
	$students.each do |student|
		#student is a hash
		student.each do |key, value|
			if value == name
				results << student.to_s
			end
		end
	end
	if results.empty?
		"No results found for '#{name}'"
	else
		return results
	end
end


#pretend HTTP delete
get "/students/:id/delete" do
	#this method deletes a student hash for student with id :id
	id = params[:id].to_i
	if id > $students.length
		"No student with that ID!"
	else
		student_name = $students[id]["Name"]
		$students[id] = nil
	end
	"Deleted #{student_name}"
end

#REAL DELETE method
delete "/students/:id/delete" do
	#this method deletes a student hash for student with id :id
	id = params[:id].to_i
	if id > $students.length
		"No student with that ID!"
	else
		student_name = $students[id]["Name"]
		$students[id] = nil
	end
	"Deleted #{student_name}"
end




