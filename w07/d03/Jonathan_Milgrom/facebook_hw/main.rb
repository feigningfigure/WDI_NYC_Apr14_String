require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'httparty'
require 'ap'


get '/' do


	erb :index
end

get '/profiles' do
	content_type :json
	
	params = request.params
	profile_name = params["profile_name"]
	url = "http://graph.facebook.com/#{profile_name}?fields=id,name,picture,gender,locale,username"
	data = HTTParty.get(url)
	data.to_json

end
