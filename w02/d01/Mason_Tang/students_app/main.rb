require 'sinatra'
# optional
# require 'sinatra/reloader'

require_relative 'db/students'

get "/" do
  "<h1>Welcome to Students App</h1>"
end
get "/students" do
  puts "This si your server log\n#{$students}"
  $students.to_s
end

get "/students/:id" do
  id = params[:id].to_i
  if id > $students.length
    "No student with that ID"
  else
  $students[id].to_s
end
end

get "/students/by_name/:name" do
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
    "No student with that ID"
  else
    student_name = $students[id]["Name"]
    $students[id] = nil
end
  "Deleted #{student_name}"
end
