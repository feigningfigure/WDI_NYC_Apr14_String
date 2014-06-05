require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'json'

FILENAME = "quiz_db"

def get_data()
	if File.exists?(FILENAME)
		results = JSON.parse(File.read(FILENAME))
		return results
	else
		{"quizzes" => []}
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

post '/quizzes' do
	# what you're getting back
	content_type :json
	data = get_data()

	new_title = request.params["quiz_name"]

	data["quizzes"].each do |quiz|
		if new_title == quiz["quiz_name"]
			return {"error" => "That quiz exists"}.to_json()
		end
	end

	new_quiz = {"title" => new_title}
	data["quizzes"].push(new_quiz)
	save_data(data)
	return {"success" => "Sweet quiz bro"}.to_json()

get '/quizzes' do
	content_type :json

	db_contents = get_data

	db_contents.to_json

end



