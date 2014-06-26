require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'json'
require 'httparty'

get '/' do
  erb :index
end

FILENAME = "fb_db"

def get_data()
  if File.exists?(FILENAME)
    results = JSON.parse(File.read(FILENAME))
    return results
  else
    {"records" => []}
  end
end

def get_fb(name)
  url = "http://graph.facebook.com/#{name}"
   friend_json = HTTParty.get(url)
   friend = JSON(friend_json)
end

def save_data(data)
  raw = JSON.dump(data)
  File.open(FILENAME, 'w') do |file|
    file.write(raw)
  end
end

post '/records' do
  content_type :json

  data = get_data

  puts request
  puts request.params

  name = params["fb_name"]
  fb_name_hash = get_fb(name)

  # continue posting below
  new_name = {"name" => fb_name_hash["name"],
              "id" => fb_name_hash["id"],
              "location" => fb_name_hash["locale"],
              "gender" => fb_name_hash["gender"],
              "username" => fb_name_hash["username"]}
  # new_name = {"name" => request.params["fb_name"]}
  data["records"].push(new_name)
  save_data(data)
  # binding
  #the below is data in the .done function of the AJAX call
  message = request.params["fb_name"]
  message.to_json
end

get '/records' do
  content_type :json
  db_contents = get_data
  db_contents.to_json
end

