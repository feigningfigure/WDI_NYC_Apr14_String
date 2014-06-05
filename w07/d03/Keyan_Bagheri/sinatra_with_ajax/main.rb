require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'json'
require 'httparty'

FRIENDNAME = "friend_db"

def get_data()
	if File.exists?(FRIENDNAME)
		results = JSON.parse(File.read(FRIENDNAME))
		return results
	else
		{"friends" => []}
	end
end

def save_data(data)
	raw = JSON.dump(data)
	File.open(FRIENDNAME, 'w') do |file|
		file.write(raw)
	end
end

get '/' do
	erb :index
end

post '/friends' do
	username = params[:username]

	url = "http://graph.facebook.com/#{username}"
	friend_json = HTTParty.get(url)
	friend = JSON(friend_json)


	content_type :json

	data = get_data
	puts request
	puts request.params

	new_friend = {"username" => friend["username"],
		"first_name" => friend["first_name"],
		"last_name" => friend["last_name"],
		"id" => friend["id"],
		"locale" => friend["locale"],
		"gender" => friend["gender"]}

		data["friends"].push(new_friend)

		save_data(data)

		message = friend["first_name"]
		message.to_json

	end

	get '/friends' do 
		content_type :json

		db_contents = get_data

		db_contents.to_json

	end



