require 'sinatra'
# optional
require 'sinatra/reloader'

# this loads a global variable called $students which is an array of hashes
require_relative "db/students"

# Home Path
get "/" do
  # Some kind of index or landing page
  "<h1>Welcome to Students App</h1>"
end

get "/students" do
  puts "THIS IS YOUR SERVER LOG!\n#{$students}"
  $students.to_s
end

get "/students/:id" do
  id = params[:id].to_i
  if id > $students.length
    "No student with that ID!"
  else
    $students[id].to_s
  end
end

get "/students/by_name/:name" do
  name = params[:name]
  results = []
  $students.each do |student|
    # student is a hash.
    student.each do |key, value|
      if value == name
        results << student.to_s
      end
    end

  end
  # this gets put on the page in the HTTP response body
  # expect to see an array of students on the page
  if results.empty?
    "No results found for '#{name}'"
  else
    return results
  end
end

# pretend HTTP delete
get "/students/:id/delete" do
  # this method deletes a student hash for student with id :id
  id = params[:id].to_i
  if id > $students.length
    "No student with that ID!"
  else
    student_name = $students[id]["Name"]
    $students[id] = nil
  end
  "Deleted #{student_name}"
end

# real DELETE method
delete "/students/:id" do
  # this method deletes a student hash for student with id :id
  id = params[:id].to_i
  if id > $students.length
    "No student with that ID!"
  else
    student_name = $students[id]["Name"]
    $students[id] = nil
  end
  "Deleted #{student_name}"
end
