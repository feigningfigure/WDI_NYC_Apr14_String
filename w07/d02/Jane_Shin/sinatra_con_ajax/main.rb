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
	File.open(Filename, 'w') do |file|
		file.write(raw)
	end
end

get '/' do
	"hello world"
end