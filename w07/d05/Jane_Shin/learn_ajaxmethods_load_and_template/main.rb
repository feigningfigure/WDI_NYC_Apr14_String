require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'json'


# def get_data()
# 	if File.exists?(FILENAME)
# 		results = JSON.parse(File.read(FILENAME))
# 		return results
# 	else
# 		{"quizzes" => []}
# 	end
# end

# def save_data(data)
# 	raw = JSON.dump(data)
# 	File.open(FILENAME, 'w') do |file|
# 		file.write(raw)
# 	end
# end

get "/" do
	erb :index
end


get "/load" do
	"<li>LOADED FROM SERVER</li>"
end