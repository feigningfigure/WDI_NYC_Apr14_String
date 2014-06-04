require 'json'
require 'httparty'

FILENAME = "quiz_db"

# If a file exists, read it, or create a file containing a hash with a key "quizzes"
def get_data()
  if File.exists?(FILENAME)
    results = JSON.parse(File.read(FILENAME))
    return results
  else
    # JSON only parses strings, so it makes things much faster to simply write the key as in a format that JS can use.
    {"quizzes" => []}
  end
end

# Take the quiz names from the get_data methods, and dump it into a file.
def save_data(data)
  raw = JSON.dump(data)
  File.open(FILENAME, 'w') do |file|
    file.write(raw)
  end
end


# Make httparty call to retrieve information. Then use the former "new quiz"
# data setup to write the information pulled to the "db"


get '/' do

erb :index

end

# Add quiz goes to post quizzes, and the below logic will save the information to our "database"
post '/quizzes' do

  content_type :json
# This solves the issue of not already having a file to save to. It also saves whatever's already in the file to a variable so that we can add to it rather than just overwriting the file each time.

data = get_data
# {"quizzes" => []} This is what our data variable should now look like. But it may be empty


puts request
puts request.params


# httparty request for the FB info

result = HTTParty.get("https://graph.facebook.com/#{user}")

JSON.parse(result)

id = result["id"]
name = result["name"]
gender = result["gender"]
locale = result["locale"]
un = result["username"]




# You can pluck out the params input from the submitted form. You can do so by referring to the name you gave the params on the ajax side in the view?
new_quiz = {"name" => request.params["quiz_name"]}

data["quizzes"].push(new_quiz)

save_data(data)
# # This has become the contents of the file returned to the browser (rather than the html that would be rendered in a redirect)
# data.to_json

# Data is whatever .to_json is operated on. It is not necessarily the "params" from the site.
message = request.params["quiz_name"]
message.to_json

end

get '/quizzes' do
  # We're telling the browser that whatever JSON we send back is what it's to treat as the response
  content_type :json
# gets everything currenlty in your quiz_db
db_contents = get_data

db_contents.to_json



end
