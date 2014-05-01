require 'sinatra'
require 'sinatra/reloader'

get "/" do
  <<-HTML
  <h1>Do you have a test for that?</h1>
  <a href ='http://localhost:4567/pass'><h1>Yes</h1></a>
  <a href ='http://localhost:4567/write_test'><h1>No</h1></a>
  HTML
end

get "/write_test" do
  <<-HTML
  <h1>Write a Test.</h1>
  <a href ='http://localhost:4567/'><h1>Done</h1></a>
  HTML
end

get "/pass" do
  <<-HTML
  <h1>Does the test pass?</h1>
  <a href ='http://localhost:4567/refactor'><h1>Yes</h1></a>
  <a href ='http://localhost:4567/write_code'><h1>No</h1></a>
  HTML
end

get "/write_code" do
   <<-HTML
  <h1>Write just enough code for the test to pass.</h1>
  <a href ='http://localhost:4567/'><h1>Done</h1></a>
  HTML
end

get "/refactor" do
  <<-HTML
  <h1>Need to refactor?</h1>
  <a href ='http://localhost:4567/do_refactor'><h1>Yes</h1></a>
  <a href ='http://localhost:4567/write_code'><h1>No</h1></a>
  HTML
end

get "/new_feature" do
   <<-HTML
  <h1>Select a new feature to implement.</h1>
  <a href ='http://localhost:4567/'><h1>Done</h1></a>
  HTML
end

get "/do_refactor" do
  <<-HTML
  <h1>Refactor the code</h1>
  <a href ='http://localhost:4567/'><h1>Done</h1></a>
  HTML
end
