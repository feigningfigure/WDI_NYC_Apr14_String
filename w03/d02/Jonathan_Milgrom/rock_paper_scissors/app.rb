require 'sinatra'
require 'sinatra/reloader'



get '/play' do
	erb :start
end

get 'play/:hand' do

	player_choice = params[:hand].to_sym

	wins_hash = {:rock => :scissors, :scissors => :paper, :paper => :rock}

	erb :rps

end







# get '/play' do
	
# 	puts 
# 	@user_input = params[:user_input]
# 	@computer_input = ["rock", "paper", "scissors"][rand(0..2)]
# 	user_input = 0
# 	if @user_input != @computer_input

# 		case user_input
# 		when "rock"
# 			unless @computer_input == "paper" then user_result = 1 end
# 		when "paper"
# 			unless @computer_input == "scissors" then user_result = 1 end
# 		when "scissors"
# 			unless @computer_input == "rock" then user_result = 1 end

# 		erb: result
# 	else
# 		erb: play
# end