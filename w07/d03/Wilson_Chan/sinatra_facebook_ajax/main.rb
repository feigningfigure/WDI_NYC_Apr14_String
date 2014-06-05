require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'json'
require 'HTTParty'

FILENAME = "facebook_db"

def get_data()
	if File.exists?(FILENAME)
		results = JSON.parse(File.read(FILENAME))
		return results
	else
		{"details" => []}
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

post '/details' do

	content_type :json

	data = get_data
	# {"quizzes" => []} Is what our data variable should now look like.  But it may not be empty
	puts request
	puts request.params

	new_detail = {"title" => request.params["detail_name"]}

	data["details"].push(new_info)

	save_data(data)

	#the below is data in the .done function of the AJAX call
	message = request.params["detail_name"]

	message.to_json

end

get '/details' do

	details = params[:details]

	url = "http://graph.facebook.com/wilsonchan"
	name_json = HTTParty.get(url)

	content_type :json

	db_contents = get_data

	db_contents.to_json

end



