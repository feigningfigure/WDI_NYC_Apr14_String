require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'httparty'
require 'json'


def get_data()
	if File.exists?(FILENAME)
		results = JSON.parse(File.read(FILENAME))
		return results
	else
		{"" => []}
	end
end

def save_data(data)
	raw = JSON.dump(data)
	File.open(FILENAME, 'w') do |file|
		file.write(raw)
	end
end



get '/'  do

	erb :index

end



