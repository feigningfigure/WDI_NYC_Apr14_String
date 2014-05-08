require 'bundler'
Bundler.require


#### SETUP
$wining_states_hash = {:rock => :scissors, :scissors => :paper, :paper => :rock}
$possible_choices = [:rock, :paper, :scissors]

def computer_choses
  computer_choice = $possible_choices[rand(4)-1]
  return computer_choice
end


def evaluate_results(user_choice, computer_choice)
  user_choice = user_choice.to_sym
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
  redirect('/play')
end

get '/play' do
  erb :start
end

get '/play/:user_choice' do
  @user_choice = params[:user_choice]
  @computer_choice = computer_choses()
  @result = evaluate_results(@user_choice, @computer_choice)
  erb :result
end
