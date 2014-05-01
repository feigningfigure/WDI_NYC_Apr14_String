require 'sinatra'
require 'sinatra/reloader'

get '/' do
	redirect "/index.html"
	#this is too long \/
	#File.open("index.html").read	<- BUT THIS DOES WORK
end

def pretty_student_printer(student_hash)
  <<-HTML
  <h1>#{student_hash['Name']}</h1>
  <p>I'm #{student_hash['Name']} my email is #{student_hash['Email']}.  On Github I'm #{student_hash['GitHub']}</p>
  HTML
end

get "/students" do
	array =[]
	$students.each do |dtudent_hash|
		array << pretty_student_printer(student_hash)
	end
	p array
	array.join
end
