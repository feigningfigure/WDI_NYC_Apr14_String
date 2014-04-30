require 'sinatra'
# build a hash
require_relative 'instructors'

get '/tea/:name1/:name2' do
  "#{params[:name1]} and #{params[:name2]} are having a lovely tea ceremony"
end

# reevaluate this code
get '/battle/:name1/:name2' do
  #reevaluate this code
  winner = instructors.shuffle(instructors.length)
    if winner == "omar"
      loser = neal
    else
      loser = omar
    end
  # may not take winner here
  "#{param[winner]} beats #{param[winner]}"
end

