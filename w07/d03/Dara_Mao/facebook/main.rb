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
    # Need to add first name, last name and other attributes
    {"friends" => []}
  end
end

# Saves the data to the database file
def save_data(data)
  raw = JSON.dump(data)
  File.open(FILENAME, 'w') do |file|
    file.write(raw)
  end
end

# API
def search_facebook(username)
  # // API
  url = "http://graph.facebook.com/#{username}"
  friend_json = HTTParty.get(url)
  friend = JSON(friend_json)
  # // Get the first name, last name
  first_name = friend["first_name"]
end

get '/' do
  # "hello"
  # get the input from the search_input field
  first_name = params[:search_input]
  puts first_name
  # test = search_facebook("first_name")
  # "#{test}"
  erb :index
end

post '/friends' do
  content_type :json
  data = get_data


# Passing params from input
  first_name = params[:first_name]
  api_return = search_facebook(first_name)

  puts request
  puts request.params
  # binding.pry
  new_friend = {"first_name" => request.params["first_name"]}

  data["friends"].push(api_return)

  save_data(data)

  #the below is data in the .done function of the AJAX call
  message = request.params["first_name"]
  message.to_json

end

get '/friends' do
  content_type :json

  db_contents = get_data

  db_contents.to_json

end




