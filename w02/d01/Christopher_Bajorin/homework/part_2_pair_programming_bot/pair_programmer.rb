require 'sinatra'
require 'sinatra/reloader'
require_relative 'styles'

# buttons aren't working.

get '/' do
  <<-HTML
  <link rel="stylesheet" type="text/css" href="/styles.css">
  <h1>Does The Test Pass?</h1>
  <input type="submit" value=" YES " href="http://localhost:4567/yespass"><br>
  <input type="submit" value=" NO " href="http://localhost:4567/nopass">


  HTML
end

get '/nopass' do
  <<-HTML

  <h1>write just enough code for the test to pass</h1>
  <input type="submit" value=" DONE " href="http://localhost:4567/">

  HTML
end


get '/yespass' do
  <<-HTML
  <h1>Do you need to refactor?</h1>
  <input type="submit" value=" YES " href="http://localhost:4567/yespass/yesrefactor"><br>
  <input type="submit" value=" NO " href="http://localhost:4567/nopass/norefactor">

  HTML
end


get '/yespass/yesrefactor' do
  <<-HTML
  <h1>Refactor the code.</h1>
  <input type="submit" value=" DONE " href="http://localhost:4567/">

  HTML
end


get '/yespass/norefactor' do
  <<-HTML
  <h1>Congratulations</h1>
  <input type="submit" value=" DONE " href="http://localhost:4567/">

  HTML
end

