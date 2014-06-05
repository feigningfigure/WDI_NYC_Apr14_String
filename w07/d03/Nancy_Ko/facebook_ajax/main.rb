require 'sinatra'
require 'sinatra/reloader'
require 'json'
require 'pry'
require 'ap'	
require 'httparty'


FILENAME = "faces_db"

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



post '/faces' do

	content_type :json

	def get_friend(username)

		username = params[:username]

		url = "http://graph.facebook.com/#{username}"

		find_this_guy = HTTParty.get(url)

		friend = JSON(find_this_guy)

		@name = friend["name"]

		@gender = friend["gender"]

		@locale = friend["locale"]

		@username = friend["username"]
	end

end