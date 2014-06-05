require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'json'
require 'httparty'

FILENAME = "facebook_db"

def get_data()
  if File.exists?(FILENAME)
    results = JSON.parse(File.read(FILENAME))
    return results
  else
    {"profiles" => []}
  end
end

def save_data(data)
  # turning data in raw json
  raw = JSON.dump(data)
  # open file and write raw json to the file
  File.open(FILENAME, 'w') do |file|
    file.write(raw)
  end
end

get '/' do
  erb :index
end

def search_facebook(user_name)
  JSON.parse(HTTParty.get("https://graph.facebook.com/#{user_name}"))
end

post '/profiles' do
  content_type :json
  data = get_data
  puts request
  puts request.params
  new_profile = search_facebook(request.params["facebook_search"])
  data["profiles"].push(new_profile)
  save_data(data)
  message = request.params["facebook_search"]
  message.to_json
end

get '/profiles' do
  content_type :json
  # get_data - everything that is currently in db
  # if you want to send it back to browser, you have to to .to_json
  db_contents = get_data
  db_contents.to_json
end

