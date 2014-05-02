require 'sinatra'
require 'sinatra/reloader'

get '/' do

  'Hello world'
end

get '/name/:name' do
  "hello #{params[:name]}"
end
# Example:
# Request: '/tea/neel/omar'
# Response: 'neel and omar are having a lovely tea ceremony'
# Request: '/battle/matt/omar'
# Response: omar beats neel.
# note: the winner should be randomly generated.
get '/tea/:name_2/:name_1' do
  " #{params[:name_2]} and #{params[:name_1]} will have a awesome tea party"

  end

get '/battle/:name_2/:name_1' do
      if rand(2) == 0

      " #{params[:name_2]} beats #{params[:name_1]}."
      else
      " #{params[:name_1]} beats #{params[:name_2]}."

      end
end




