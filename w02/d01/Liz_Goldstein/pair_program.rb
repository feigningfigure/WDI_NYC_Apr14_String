require 'sinatra'
require 'sinatra/reloader'

get '/' do
  "<h1>Do you have a test for that?</h1>
  <h2><a href='\/pass'>YES</a> ..... <a href='\/write_test'>NO</a>"
end

get '/pass' do
   "<h1>Does the test pass?</h1>
   <h2><a href='\/refactor'>YES</a> ..... <a href='\/write_code'>NO</a>"
end

get '/write_test' do
   "<h1>Write a test.</h1>
   <h2><a href='\/pass'>DONE</a>"
end

get '/write_code' do
   "<h1>Write just enough code for the test to pass.</h1>
   <h2><a href='\/pass'>DONE</a>"
end

get '/refactor' do
   "<h1>Need to refactor?</h1>
   <h2><a href='\/do_refactor'>YES</a> ..... <a href='\/new_feature'>NO</a>"
 end

 get '/do_refactor' do
 "<h1>Refactor the code.</h1>
   <h2><a href='\/pass'>DONE</a>"
 end

 get '/new_feature' do
 "<h1>Select a new feature to implement.</h1>
   <h2><a href='/'>DONE</a>"
 end
