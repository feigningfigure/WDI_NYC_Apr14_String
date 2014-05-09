require 'sinatra'
require 'sinatra/reloader'

@computer = ["Rock", "Paper", "Scissors"]

get '/play' do
  @comp_play = @computer.shuffle[0]
  erb: welcome
end


get 'play/:hand' do
  wins_hash = {:rock => :scissors, :scissors => :paper, :paper => :rock}
  player_choice = params[:hand].to_sym
  computer_choice = wins_hash.keys.sample
  if wins_hash[player_choice] == computer_choice
    @
  erb: rps
end


# get '/play/rock' do
#   @comp_play = @computer.shuffle[0]
#   erb: rock
# end

# get '/play/scissors' do
#   @comp_play = @computer.shuffle[0]
#   erb: scissors
# end

# get '/play/scissors' do
#   @comp_play = @computer.shuffle[0]
#   erb: paper
# end
