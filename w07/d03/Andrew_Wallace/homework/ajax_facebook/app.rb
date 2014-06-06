require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'json'
require 'awesome_print'
require 'httparty'

get '/' do
  erb :index
end

get '/friend' do
  username = params(:username)

  url = "http://graph.facebook.com/#{username}"
  friend_json = HTTParty.get(url)
  @friend = JSON(friend_json)

  profile_picture = HTTParty.get("http://graph.facebook.com/#{username}?fields=picture")
  @profile_picture_hash = JSON(profile_picture)

  if @friend["error"]
    @message = @friend["error"]["message"]
    erb :index
  else
    erb :friend
  end

end





# id, first and last name, gender, locale, and username
def facebookGraphConnection
  friend_json = HTTParty.get("http://graph.facebook.com/#{input_username}")
  return friend_json
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
