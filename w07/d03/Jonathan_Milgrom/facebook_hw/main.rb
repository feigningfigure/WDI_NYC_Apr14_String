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

	profile_name.to_json

end
