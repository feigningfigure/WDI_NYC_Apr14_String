require 'sinatra'
require 'sinatra/reloader'

get '/' do 
	<<-MESSAGE
	<h1>Do you have a test for that?</h1>
	<a href='http://localhost:4567/pass'>Yep!</a>
	<a href='http://localhost:4567/write_test'>Nope.</a"
	MESSAGE
end

get '/pass' do 
	<<-MESSAGE
	<h1>Does the test pass?</h1>
	<a href='http://localhost:4567/refactor'>Yep!</a>
	<a href='http://localhost:4567/write_enough'>Nope.</a>
	MESSAGE
end


get '/write_test' do 
	
	"Write a test, please"

end

get '/write_enough' do 
	
	"Write just enough code for the test to pass."

end

get '/refactor' do 
	<<-MESSAGE
	<h1>Need to refactor?</h1>
	<a href='http://localhost:4567/refactor_it'>Yep!</a>
	<a href='http://localhost:4567/feature'>Nope.</a"
	MESSAGE
end

get '/refactor_it' do 
	<<-MESSAGE
	<h1>Refactor it!</h1>
	MESSAGE
end

get '/feature' do 
	<<-MESSAGE
	<h1>Select a new feature to implement!</h1>
	MESSAGE
end



