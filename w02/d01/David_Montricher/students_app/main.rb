require 'sinatra'
# optional
require 'sinatra/reloader'

# this loads a global variables called students
require_relative "db/students"

# home path, make some kind of landing page
get "/" do
  p "<h2>Welcome to Students App. Please enter a number (0-24) to see a student name</h2>"
end

get "/students" do
  puts "This is your Server Log #{$students}"
  $student.to_s
end

get "/:student_index" do
  student_index = params[:student_index].to_i
  $students[student_index]["Name"]
end

get "/students/by_name/:name" do
  name = params[:name]
  results = []
  $students.each do |students|
    #student is a hash
    students.each do |key,value|
      if value == name
        results << student
      end
end
end

