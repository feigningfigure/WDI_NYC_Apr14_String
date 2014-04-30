require 'sinatra'
require 'sinatra/reloader'

get '/' do
	"<h1>Do you have a test for that?</h1><a href=http://localhost:4567/have_test>  Yes  <p></p></a><a href=http://localhost:4567/write_test>  No  </a>"
end

get '/have_test' do
	"<h1>Does the test pass?</h1><a href=http://localhost:4567/need_refactor>  Yes  <p></p></a><a href=http://localhost:4567/write_code>  No  </a>"
end

get '/need_refactor' do
	"<h1>Do you need to refactor?</h1><a href=http://localhost:4567/refactor>  Yes  <p></p></a><a href=http://localhost:4567/new_feature>  No  </a>"
end

get '/refactor' do
	"<h1>Refactor the code</h1><a href=http://localhost:4567/have_test>  Done  </a>"
end

get '/write_test' do
	"<h1>Write a test</h1><a href=http://localhost:4567/have_test>  Done  </a>"
end

get '/write_code' do
	"<h1>Write some more code.</h1><a href=http://localhost:4567/have_test>  Done  </a>"
end

get '/new_feature' do
	"<h1>Select a new feature to implement</h1><a href=http://localhost:4567/have_test>  Done  </a>"
end