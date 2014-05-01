require 'sinatra'
require 'sinatra/reloader'

get '/' do
	<<-HTML
	<h1>Do you have a test for that?</h1>
	<a href="/pass">YES</a>
	<a href="/write_test">NO</a>
	HTML
end

get '/pass' do
	<<-HTML
	<h1>Does the test pass?</h1>
	<a href="/refactor">YES</a>
	<a href="/write_code">NO</a>
	HTML
end

get '/write_test' do
	<<-HTML
	<h1>Write a test.</h1>
	<a href="/pass">DONE</a>
	HTML
end

get '/write_code' do
	<<-HTML
	<h1>Write just enough code for the test to pass.</h1>
	<a href="/pass">DONE</a>
	HTML
end

get '/refactor' do
	<<-HTML
	<h1>Need to refactor?</h1>
	<a href="/do_refactor">YES</a>
	<a href="/new_feature">NO</a>
	HTML
end

get '/do_refactor' do
	<<-HTML
	<h1>Refactor the code.</h1>
	<a href="/pass">DONE</a>
	HTML
end

get '/new_feature' do
	<<-HTML
	<h1>Select a new feature to implement.</h1>
	<a href="/">DONE</a>
	HTML
end

