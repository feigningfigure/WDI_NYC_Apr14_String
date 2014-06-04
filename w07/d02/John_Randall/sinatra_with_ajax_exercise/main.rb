require 'sinatra'
require 'sinatra/reloader'



FILENAME = "quiz_db"

def load_data()
	if File.exists?(FILENAME)
		results = JSON.parse(File.read(FILENAME))
		return results
	else
		{'quizzes' => []}
	end
end

def save_data(data)
	raw = JSON.dump(data)
	File.open(FILENAME, 'w') do |file|
		file.write(raw)
	end
end


get '/' do
	# "hello World"
	erb:index
end




post '/quizzes' do
	data = load_data
	data.append(params[:quiz])
	save_data(data)
end

get '/quizzes' do
end