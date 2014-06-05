require 'sinatra'
require 'sinatra/reloader'
require 'json'
require 'pry'
require 'httparty'

FILENAME = "fb_db"

def get_data()
	if File.exists?(FILENAME)
		results = JSON.parse(File.read(FILENAME))
		return results
	else
		{"users" => []}
	end
end

def save_data(data)
	raw = JSON.dump(data)
	File.open(FILENAME, 'w') do |file|
		file.write(raw)
	end
end

def fb_connect(name)
	JSON.parse(HTTParty.get("http://graph.facebook.com/#{name.downcase}"))
end

get '/' do
	# content_type :json

	# db_contents = get_data

	# db_contents.to_json

	erb :index
end

post '/users' do
	content_type :json

	data = get_data

	# name = request.params["user"]
	name = params["user"]
	fb_raw = fb_connect(name)

	new_user = {
   "name" => fb_raw["name"],
   "gender" => fb_raw["gender"],
   "locale" => fb_raw["locale"],
   "username" => fb_raw["username"],
   "link" => fb_raw["link"]
	}

	data["users"].push(new_user)

	save_data(data)

	message = request.params["user"]
	message.to_json
end
