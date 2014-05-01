require 'sinatra'

# optional
require 'sinatra/reloader'

#this load a global variable called
require_relative 'students'

#Home Path
get '/' do
  "Welcome to Student App"
end

get '/students/:id' do #students: the collection, /:id is an element of a collection
  id = params[:id].to_i
  if  id > $students.length
    "No student with that ID"
  else
    $student[id]["Name"]
  end
end

get '/students/by_name/:name' do
  name = params[:name]
  results = []
  $students.each do |student|
    student.each |key,value|
    if value == name
      result << student
    end
  end
end
  return results #inject to http page (doesnt create anything), whereas print/put output to server log with an empty array []
end

#%20 == space between strings Andrew%20Wallace


