# Sinatra + HTML
# Build an about me page with the following routes.
# Request: '/'
# Response: Display an about me page.
# Request: '/contact'
# Response: Display your contact information.
# Request: ''
# Request: '/albums'
# Response: Display a list of your top 3 favorite albums.



require 'sinatra'
require 'sinatra/reloader'




#####LOGIC 

get '/' do
	"
	<h1>Do you have a test for that?</h1>
	#{display_yes_or_no_btn('/pass','write_test')}
	"
end


get '/write_test' do
	#From /, answ = no 
	"
	<h1>Write a test.</h1>
	#{display_done_btn('/pass')}
	"
end


get '/pass' do
	#From / answ = yes
	"
	<h1>Does the test pass?</h1>
	#{display_yes_or_no_btn('/refactor','/write_code')}
	"
end



get '/write_code' do
	#From /pass, answ = no 
	"
	<h1>Write just enough code for the test to pass.</h1>
	#{display_done_btn('/pass')}
	"
end




get '/refactor' do
	#From /pass, answ = yes 
	"
	<h1>Need to refactor?</h1>
	#{display_yes_or_no_btn('/do_refactor','new_feature')}
	"
end


get '/new_feature' do
	#From /refactor, answ = no 
	"
	<h1>Select a new feature to implement.</h1>
	#{display_done_btn('/')}
	"
end



get '/do_refactor' do
	#From /refactor, ans = yes
	"
	<h1>Refactor the code.</h1>
	#{display_done_btn('/pass')}
	"
end




###### BUTTONS

def display_yes_or_no_btn(yes_link, no_link)
	"
	<a href = '#{yes_link}'>Yes</a>
	<a href = '#{no_link}'>No</a>
	"

end


def display_done_btn(done_link)
	"
	<a href = '#{done_link}'>Done</a>
	"
end



