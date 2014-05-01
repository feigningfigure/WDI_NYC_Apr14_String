require 'sinatra'


get '/' do
  <<-HTML
    <h1>"Do you have a test for that?"</h1>
    <a href="http://localhost:4567/yes">yes</a></br>
    <a href="http://localhost:4567/no">no</a></br>
  HTML
end

get '/yes' do
  <<-HTML
    <h1>"Does the test pass?"</h1>
    <a href="http://localhost:4567/yes/yes">yes</a></br>
    <a href="http://localhost:4567/no/no">no</a></br>
  HTML
end

get '/no' do
  <<-HTML
    <h1>"Write a test."</h1>
    <a href="http://localhost:4567/yes">finished</a></br>
  HTML
end

get '/yes/yes' do
  <<-HTML
    <h1>"Need to refactor?"</h1>
    <a href="http://localhost:4567/yes/yes/yes">yes</a></br>
    <a href="http://localhost:4567/no/no/no">no</a></br>
  HTML
end

get '/no/no/no' do
  <<-HTML
    <h1>"Select a new feature to implement"</h1>
    <a href="http://localhost:4567/">finished</a></br>
  HTML
end

get '/yes/yes/yes' do
  <<-HTML
    <h1>"Refactor the code."</h1>
    <a href="http://localhost:4567/yes">finished</a></br>
  HTML
end

get '/no/no' do
  <<-HTML
    <h1>"Write just enough code for the test to pass."</h1>
    <a href="http://localhost:4567/yes">finished</a></br>
  HTML
end
