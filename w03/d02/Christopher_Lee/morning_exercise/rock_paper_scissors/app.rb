require 'sinatra'
require 'sinatra/reloader'

get '/' do
  "Hello World!"
  redirect :play
end

get '/play/:hand' do
  # computer_choice
  wins_hash = [:rock => :scissors, :scissors => :paper, :paper => :rock]

  player_choice = params[:hand].to_sym
  computer_choice = wins_hash.keys.sample
            # :paper => scissors          #:paper
  if wins_hash[player_choice] == computer_choice
    @result = <p>"You chose: #{player_choice}"</p>
              <p>"Computer chose: #{computer_choice}"</p>
              <h3>"Congradualations"</h3>
            # :scissors        #:paper
  elsif player_choice == computer_choice
    @result = <p>"You chose: #{player_choice}"</p>
              <p>"Computer chose: #{computer_choice}"</p>
              <h3>"Draw"</h3>
  else
    @result = <p>"You chose: #{player_choice}"</p>
              <p>"Computer chose: #{computer_choice}"</p>
              <h3>"You Lost"</h3>
  end

  erb :rps
end

get '/play/rock' do

end
