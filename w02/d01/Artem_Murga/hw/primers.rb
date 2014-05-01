require 'sinatra'
require 'sinatra/reloader'

get '/name/:name' do 
"Hello #{params[:name].capitalize}!"
end

##################
get '/:activity/:name1/:name2' do

if params[:activity] == "tea"
	"#{params[:name1].capitalize} and #{params[:name2].capitalize} are having lovely tea ceremony"
elsif params[:activity] == "battle"
	if rand(1..2) == 1
	"#{params[:name1].capitalize} beats #{params[:name2].capitalize}"
	else
	"#{params[:name2].capitalize} beats #{params[:name1].capitalize}"
	end	
else	
	"err"	
end
end

#################
# Randomizing version version
# get '/' do 
# 	a = rand(1..3)
# 	if a == 1
# 		"Who was the first man in space?"
# 	elsif a == 2
# 		"Who was the first man on the moon?"
# 	else 
# 		"Who is John Galt?"
# 	end	
# end

# get '/:answer' do

# 	if params[:answer] == "gagarin"
# 		"Correct"
# 	elsif params[:answer] == "gagarin"
# 	end
# end
##########################
get '/' do 
	"Who was the first man in space?"
end

get '/yuri_gagarin' do
	"Correct. Who was the first man on the moon?"
end

get '/neil_armstrong' do
	'Correct. etc.'
end

###################

get '/' do 

	"<h1>About me</h1>"
end


get '/albums' do 
	<<-START
	<h1>List of 3 albums</h1>
	<h2>Album 1</h2>
	<h2>Album 2</h2>
	<h2>Album 3</h2>
	START
end	

get '/contact' do 
	"<h1>Contact information</h1>"
end

get '/temp' do 
	"<h1>temp</h1>"
end

######################




