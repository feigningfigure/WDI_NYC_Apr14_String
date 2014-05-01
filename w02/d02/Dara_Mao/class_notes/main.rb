require 'sinatra'
require_relative 'students'
#Option 1:
# get '/' do
#   File.open("index.html").read
# end

#Option 2: automatic
# get '/' do
#   redirect "/index.html"
# end

get "/" do
  # Some kind of index or landing page
  "<h1>Welcome to Students App</h1>"
end
get '/students/:name' do
  @pretty_student_printer(student_hash)
  <<-HTML
  <h1>#{student_hash['Name']}</h1>
  <p>I'm #{student_hash['Name']} my email is #{student_hash['Email']}.  On Github I'm #{student_hash['GitHub']}</p>
  HTML
end

get "/students" do
  "#{$students.to_s}"
end

# get '/home' do
#   "#{make_heading(params[:user_name])}#{make_profile(params[:favorite_color])}"
# end
