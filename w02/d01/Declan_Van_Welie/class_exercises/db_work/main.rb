require 'sinatra'
require 'sinatra/reloader'


require_relative 'db/students'

#Now you can input a number and the code/broswer will return a name:

get "/students" do
  puts "THIS IS YOUR SERVER LOG\n#{$students}"
 $students.to_s
end

get "/students/:id" do
  id = params[:id].to_i

  if id > $students.length
     "No student with that ID!"
   else
    #This will give us all of the data.
  $students[id].to_s
  end
end

    #We want this to search and return hash items by searching the name.
    get "/students/by_name/:name" do
      name = params[:name]
      results = []
      $students.each do |student|
        #student is a hash.
        student.each |key, value|
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
    # print and puts will put this in the server log, while return will put it on the page.
    #return will put the results on the page

  # pretend HTTP delete
  get "/students/:id/delete" do
  #This method deletes a student hash fro student with id :id
end
