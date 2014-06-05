require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'pry'

FILENAME = "user_db"

def get_data()
  if File.exists?(FILENAME)
    results = JSON.parse(File.read(FILENAME))
    return results
  else
    {"users" => []}
  end
end

def save_data(data)
  # binding.pry
  raw = JSON.dump(data)
  File.open(FILENAME, 'w') do |file|
    file.write(raw)
  end
end

def graph_call(name)
  url = "http://graph.facebook.com/#{name.downcase.gsub(" ", "")}"
  jsonresponse = JSON.parse(HTTParty.get(url).body)

  return jsonresponse
end


get '/' do 
  erb :index
end

get '/users' do 
  content_type :json

  db_contents = get_data

  db_contents.to_json

end

post '/users' do 
  content_type :json 
  # binding.pry
  data = get_data
  response = graph_call(params["name"])

  new_user = {"facebook_id" => response["id"],
              "first_name" => response["first_name"],
              "gender" => response["male"],
              "last_name" => response["last_name"],
              "link" => response["link"],
              "locale" => response["locale"],
              "name" => response["name"],
              "username" => response["username"]
            }
  data["users"].push(new_user)

  save_data(data)

  data.to_json

end







