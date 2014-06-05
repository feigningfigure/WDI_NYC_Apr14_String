require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'httparty'
require 'json'

FILENAME = "fakebookr_db"

def get_data()
  if File.exists?(FILENAME)
    results = JSON.parse(File.read(FILENAME))
    return results
  else
    {"facebook" => []}
  end
end

def save_data(data)
  raw = JSON.dump(data)
  File.open(FILENAME, 'w') do |file|
    file.write(raw)
  end
end

def get_facebook_name_info(user_info)
  facebook_user = HTTParty.get("http://graph.facebook.com/" + user_info + "?fields=picture,name,locale")
end


get '/' do
  erb :index
end

post '/facebook' do
  content_type :json
  data = get_facebook_name_info(params["user_info"])
  fb_info=JSON(data)
  save_data(fb_info)
end

get '/facebook' do
  content_type :json
  db_contents = get_data
  fb_view=JSON(db_contents)
  puts fb_view
end