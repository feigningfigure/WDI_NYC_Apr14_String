require 'sinatra'
# optional
require '/sinatra/reloader'

# this loads a global variable called....
require_relative 'db/students'

#Home Path
get "/" do
     # Some kind of index or landing page
     "<h1>Welcome to Students App</h1>"
end

#On entering the array position, return the student name located there.
get "/students/:id" do
     id = params[:id].to_i
          if id > $students.length
               return "No student with that ID!"
          else
     $students[id]["Name"]
          end
     end


# get "/" do
#      "Hello World!"
#      This should be smaller
# end

# get '/:name' do
#      "Hello my name is, #{params[:name].capitalize}"
#      end

# get '/:name/:meal' do
#      "I'm #{params[:name]} and I love #{params[:meal]}"
#      end




