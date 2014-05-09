require 'sinatra'
require 'sinatra/reloader'



get '/play' do
	erb :start
end

get 'play/:hand' do

	player_choice = params[:hand].to_sym

	wins_hash = {:rock => :scissors, :scissors => :paper, :paper => :rock}

	computer_choice = wins_hash.keys.sample

	if wins_hash[player_choice] == 

	erb :rps

end


require 'bundler'
Bundler.require


#### John's SETUP
$wining_states_hash = {:rock => :scissors, :scissors => :paper, :paper => :rock}
$possible_choices = [:rock, :paper, :scissors]

def computer_choses
  computer_choice = $possible_choices[rand(4)-1]
  return computer_choice
end


def evaluate_results(user_choice, computer_choice)
  if user_choice == computer_choice
    return "Tie!"
  elsif user_choice == $wining_states_hash[computer_choice]
    return "Computer wins!"
  elsif user_choice != $wining_states_hash[computer_choice]
    return "User wins!"
  end
end


#### Sinatra ERB
get '/'  do
  # redirect('/play')
end

get 'play' do
  erb :start
end

get 'play/:user_choice' do
  @user_choice = params[:user_choice]
  @computer_choice = computer_choses()
  @result = evaluate_results(user_choice, computer_choice)
  erb :result
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