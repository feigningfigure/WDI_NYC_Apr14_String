require 'sinatra'
require 'sinatra/reloader'

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

get "/" do
  erb :index
end

post '/quizzes' do
  # binding.pry
  # we use get_data to...
  data = get_data
  puts request
  puts request.params

  new_quiz = request.params["quiz_name"]

  data.push("")

  save_data(data)
end



