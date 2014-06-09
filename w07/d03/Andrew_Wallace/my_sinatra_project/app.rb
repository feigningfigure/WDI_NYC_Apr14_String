require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'json'
# require 'awesome_print'
require 'httparty'
# require 'erb'

FILENAME = "db/friends_db"

#DATABASE METHODS

def read_friend_data_from_db()
  if File.exists?(FILENAME)
    results = JSON.parse(File.read(FILENAME))
    return results
  else
    {"friends" => []}
  end
end

def save_friend_data_to_db(facebook_friend_data)
  raw = JSON.dump(facebook_friend_data)
  File.open(FRIENDS, 'w') do |file| file.write(raw)
  end
end

# data = username_api_call_to_hash + username_api_call_user_photo
#FACEBOOK API METHODS
def username_api_call_to_hash(username)
  return api_response_json_string = HTTParty.get("http://graph.facebook.com/#{username}")
  # friend_hash = JSON.parse(api_response_json_string)
  # return friend_hash
end


# Return index
get '/' do
 erb :index
end

# Show friend
get '/friend' do
  read_friend_data_from_db()
end

post '/friend_new' do
  # content_type :json
  # data = get_data
  save_friend_data_to_db()
end


# Use Sinatra, Ajax, and the Facebook API (see: http://developers.facebook.com/docs/graph-api).
# This is a one-page app.
# NOTE: Do not make your Facebook API calls from within Ajax!

# User Stories

# The user can enter a person's name into a form on the page.

# After hitting "Find on Facebook", the user will see the following information returned from Facebook about the person: id, first and last name, gender, locale, and username. (Do not make your Facebook API calls from within Ajax.) This information will be displayed on the page. It will also be added to a file.

# On the same page as the "Find on Facebook" form, the user can click a button or link and see a list of all the people they have found.

# Bonus

# In the list of people found, make each person a link that when clicked returns the complete information on that person.






##TESTS##

#PASS
# ap(username_api_call_to_hash("andrewgwallace"))
# ap(username_api_call_user_photo("andrewgwallace"))
# ap(read_friend_data_from_db());



#FAIL
