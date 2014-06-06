require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'json'
require 'httparty'

FILENAME = "friends_db"

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

	#work this out
	# username = params[:username]

 #  url = "http://graph.facebook.com/#{username}"
 #  friend_json = HTTParty.get(url)
 #  @friend = JSON(friend_json)

 #  if @friend["error"]
 #    @message = @friend["error"]["message"]
 #  end
	# work this out

	erb :index
end

post '/friends' do
	content_type :json

	data = get_data
	puts request
	puts request.params

	username = params[:username]

	$friend_json = HTTParty.get(url)

  # url = "http://graph.facebook.com/#{username}"
  # friend_json = HTTParty.get(url)
  # friend = JSON(friend_json)


	new_friend = {"username" => request.friend_json}

	data["friends"].push(new_friend)

	save_data(data)

	# message = request.params["username"]
	# message.to_json

end

get '/friends' do
	content_type :json

	db_contents = get_data

	db_contents.to_json

end



