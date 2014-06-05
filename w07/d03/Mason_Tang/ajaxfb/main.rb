require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'json'
require 'httparty'


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

  friend_json = HTTParty.get("http://graph.facebook.com/mtang88")
  @friend = JSON(friend_json)





  erb :index
end


