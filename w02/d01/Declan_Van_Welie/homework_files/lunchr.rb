require 'sinatra'
require 'sinatra/reloader'

get '/' do
  "<a href ='http://localhost:4567/lunch'>Help me pick a lunch!</a>"
end
# This will interpolate whatever we input  after the "/" for the url at localhost: 4567
  get '/lunch' do
    lunch_choices = ["Chipotle","McDonalds","IndiKitch","Subway","Spice","Republic","Dorado_Tacos","Dig_Inn","Potbelly","Moaz"]
     shuffled_lunch = lunch_choices.shuffle
     return shuffled_lunch[0]
  end

