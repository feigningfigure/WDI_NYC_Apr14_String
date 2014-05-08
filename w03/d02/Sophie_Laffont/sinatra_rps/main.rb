require 'sinatra'
require 'sinatra/reloader'

get '/play' do
	erb :start
end

get	'/play/:hand' do

	wins_hash = {:rock => :scissors, :scissors => :paper, :paper => :rock}

	player_choice = params[:hand].to_sym
	computer_choice = wins_hash.keys.sample

	if wins_hash[player_choice] == computer_choice
		@result = "<div class='block'>
							 <p>You chose: <span class='greenstrong'>#{player_choice}!</span></p>
		           <p>Computer chose: <span class='bluestrong'>#{computer_choice}!</span></p>
		           </div>
		           <h3>Congratulations, You've WON! You are the greatest!</h3>"

	elsif player_choice == computer_choice
		@result = "<div class='block'>
							 <p>You chose: <span class='greenstrong'>#{player_choice}!</span></p>
		           <p>Computer chose: <span class='bluestrong'>#{computer_choice}!</span>
		           </div>
							 <h3>It was a draw!</h3>"

	else
		@result = "<div class='block'>
							 <p>You chose: <span class='greenstrong'>#{player_choice}!</span></p>
		           <p>Computer chose: <span class='bluestrong'>#{computer_choice}!</span></p>
		           </div>
		           <h3>Oh, well. You lost.</h3>
		           <p class='aside'>(Maybe computers are going to take over the world.)</p>"
	end

	erb :rps
end
