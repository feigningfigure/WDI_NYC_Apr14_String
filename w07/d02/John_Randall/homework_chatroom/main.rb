require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'json'

disable :protection

FILENAME = "chat_log"

def load_data()
	if File.exists?(FILENAME)
		results = JSON.parse(File.read(FILENAME))
		return results
	else
		{"user_messages" => []}
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

post '/user_messages' do
	content_type :json

	# binding.pry
	data = load_data()		# {"user_messages" => []} Is what our data variable should now look like.  But it may not be empty
	puts request
	puts request.params
	# binding.pry
	new_message = {"title" => request.params["quiz_name"]}

	data["user_messages"].push(new_message)

	save_data(data)

	#the below is data in the .done function of the AJAX call 
	# message = request.params["quiz_name"]
	# message.to_json

end

get '/user_messages' do 
	content_type :json

	db_contents = load_data

	db_contents.to_json

end



