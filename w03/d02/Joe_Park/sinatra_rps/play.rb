require 'sinatra'
require 'sinatra/reloader'

get '/' do 

	redirect '/play'
end

get '/play' do 
	rock = -1
	paper = 0
	scissor = 1



	erb :index
end

get '/play/:hand' do 

	wins_hash = {:rock => :scissors, :scissors => :paper, :paper => :rock}

	player_choice = params[:hand].to_sym

	computer_choice = wins_hash.keys.sample
	#.keys results in an array which allows us to use the .sample which is an array method

	if wins_hash[player_choice] == computer_choice
		@winner = 
	elsif 
	
		
	erb :rps
end


get '/play/rock' do 
	rock = -1
	paper = 0
	scissor = 1

	rock - rock    #tie(0)
	rock - paper	#lose(-1)
	rock - scissor  #win(-2)


end

get '/play/paper' do 
	rock = -1
	paper = 0
	scissor = 1

	
	paper - paper	#tie(0)
	paper - scissor  #lose(-1)
	paper - rock    #win(1)
end

get '/play/scissor' do 
	rock = -1
	paper = 0
	scissor = 1

	scissor - scissor  #tie(0)
	scissor - rock    #lose(2)
	scissor - paper		#win(1)
end