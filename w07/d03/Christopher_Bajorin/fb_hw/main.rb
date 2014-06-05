require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'json'
require 'httparty'

FILENAME = "fb_db"

def get_data()
	if File.exists?(FILENAME)
		results = JSON.parse(File.read(FILENAME))
		return results
	else
		{"friends" => []}
	end
end

def save_data(data)
	raw = JSON.dump(data)
	File.open(FILENAME, 'w') do |file|
		file.write(raw)
	end
end

get '/' do
	erb :index
end

post '/friends' do
	content_type :json

	# binding.pry
	data = get_data
	# {"friends" => []} Is what our data variable should now look like.  But it may not be empty
	puts request
	puts request.params
	username = params["friend_name"]
	url = "http://graph.facebook.com/#{username}"
	friend_json = HTTParty.get(url)
	friend_hash = JSON(friend_json)
	# binding.pry
	new_friend = {"id" => friend_hash["id"],
								"username" => friend_hash["username"],
								"first_name" => friend_hash["first_name"],
								"last_name" => friend_hash["last_name"],
								"locale" => friend_hash["locale"],
								"gender" => friend_hash["gender"]
								}
	data["friends"].push(new_friend)

	save_data(data)

	#the below is data in the .done function of the AJAX call
	message = request.params["friend_name"]
	message.to_json

end

get '/friends' do
	content_type :json

	db_contents = get_data

	db_contents.to_json

end
