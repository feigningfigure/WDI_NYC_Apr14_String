require 'sinatra'
# optional
require 'sinatra/reloader'

# this loads a global variable called $students which is an array of hashes
require_relative "db/students"

def pretty_student_printer(student_hash)
  <<-HTML
  <h1>#{student_hash['Name']}</h1>
  <p>I'm #{student_hash['Name']} my email is #{student_hash['Email']}.  On Github I'm #{student_hash['GitHub']}</p>
  HTML
end

# Home Path
get "/" do
  # Some kind of index or landing page
  "<h1>Welcome to Students App</h1>"
end

# get "/students" do
#   # my code goes here
# end

# get "/students" do
#   # Chris Lee
#   $students.each do |single_student|
#     puts pretty_student_printer(single_student)
#   end
# end

get "/students" do
  # Keyan
  array = []
  $students.each do |student_hash|
    array << pretty_student_printer(student_hash)
  end
  p array
  array.join("<hr>")
  # array.to_s
end

get "/students/:id" do
  id = params[:id].to_i
  if id > $students.length
    "No student with that ID!"
  else
    pretty_student_printer($students[id])
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
