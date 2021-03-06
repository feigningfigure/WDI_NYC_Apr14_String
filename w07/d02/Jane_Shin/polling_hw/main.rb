require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'json'

FILENAME = "prince_db"

def get_data()
	if File.exists?(FILENAME)
		results = JSON.parse(File.read(FILENAME))
		return results
	else
		{"princes" => []}
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

post '/princes' do
	content_type :json

	# binding.pry
	data = get_data
	# {"quizzes" => []} Is what our data variable should now look like.  But it may not be empty
	puts request
	puts request.params
	# binding.pry
	new_vote = {"new_vote" => request.params["prince_name"]}

	data["princes"].push(new_vote)

	save_data(data)

	#the below is data in the .done function of the AJAX call 
	message = request.params["prince_name"]
	message.to_json

end

get '/princes' do 
	content_type :json

	db_contents = get_data

	db_contents.to_json

end



