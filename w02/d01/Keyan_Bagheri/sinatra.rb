require 'sinatra'
require 'sinatra/reloader'

#this loads a global variable called students, which is an array of hashes
require_relative 'students1'

get '/' do
	"<h1>Welcome to students app</h1>"
end

get '/students' do
	print "THIS IS YOUR SERVER LOG \n #{$students.to_s}"
	$students.to_s
end

get '/students/:id' do
	id = params[:id].to_i
	if id >= $students.length || id == nil
		"No student with that ID!"
	else
		$students[id].to_s
	end
end

get '/students/by_name/:name' do
	name = params[:name]
	results = []
	$students.each do |student|
		student.each do |key,value|
			if value == name
				results << student.to_s
			end
		end
	end
	#this gets put on 
	if results.empty?
		"No results found for '#{name}"
	else
	print "Printing this"
	puts results
	print "Hey I'm returning this"
	return results
end
end

#pretend http delete
get '/students/:id/delete' do
	#this method deletes a student hash for student with id :id
	id = params[:id].to_i
	if id >= $students.length
		"No student with that ID!"
	else
		student_name = $students[id].to_s
		$students[id] = nil
	end
	"Deleted #{student_name}"
end



