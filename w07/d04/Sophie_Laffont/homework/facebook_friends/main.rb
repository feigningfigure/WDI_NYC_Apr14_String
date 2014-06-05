require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'json'
require 'HTTParty'

FILENAME = "friends_rb"

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

	data = get_data

	user = request.params["friend_name"]
	puts user
	url = "http://graph.facebook.com/#{user}"
	friend_json = HTTParty.get(url)
	@friend = JSON(friend_json)
	puts @friend
	data["friends"].push(@friend)

	save_data(data)

	message = @friend
	message.to_json

end

get '/friends' do
	content_type :json

	db_contents = get_data

	db_contents.to_json

end



