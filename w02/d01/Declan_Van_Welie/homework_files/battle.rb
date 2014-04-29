require 'sinatra'
require 'sinatra/reloader'

get '/battle' do
  "Welcome to the battle. Choose your opponents"
end

 get '/battle/:name1/:name2' do
  my_array = [params[:name1], params[:name2]]
  shuffled_array = my_array.shuffle
  "#{shuffled_array[0]} beats #{shuffled_array[1]}"

end


#  get '/battle/:name1/:name2' do
#   my_array = [:name1,:name2]
#   warrior = my_array.sample
#   "#{params[warrior]} beats #{params[warrior]}"

# end

# get '/battle/:name1/:name2' do
#   "#{params[:name1]} beats #{params[:name2]}"
