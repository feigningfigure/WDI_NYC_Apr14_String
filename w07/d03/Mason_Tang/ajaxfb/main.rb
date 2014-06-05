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
    {"friends" => []}
  end
end

def save_data(data)
  raw = JSON.dump(data)
  File.open(FILENAME, 'w') do |file|
    file.write(raw)
  end
end


get '/' do
  username = params[:username]



  erb :index
end


post "/" do
  content_type :json

  # binding.pry
  data = get_data
  # {"quizzes" => []} Is what our data variable should now look like.  But it may not be empty
  puts request
  puts request.params
  # binding.pry

  friend_json = HTTParty.get("http://graph.facebook.com/http://graph.facebook.com/#{request.params['friend']}")
  new_friend = JSON(friend_json)
  # new_friend = {"title" => request.params["quiz_name"]}

  data["friends"].push(new_friend)

  save_data(data)

  #the below is data in the .done function of the AJAX call
  message = request.params["friend_name"]
  message.to_json

end
