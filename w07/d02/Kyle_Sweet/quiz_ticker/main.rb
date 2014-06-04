require 'sinatra'
require 'sinatra/reloader'
require 'json'
require 'pry'

FILENAME = 'quiz_db'

def get_data()
  if File.exists?(FILENAME)
    results = JSON.parse(File.read(FILENAME))
    return results
  else
    {"quiz" => []}
  end
end

def save_data(data)
  raw = JSON.dump(data)
  File.open(FILENAME, 'w') do |file|
    file.write(raw)
  end
end

get '/' do
  erb :index
end

post '/quiz' do
  content_type :json

  data = get_data
  
  puts request
  put request.params
  
  new_quiz = {"title" => request.params["quiz_name"]}
  
  data["quiz"].push(new_quiz)

  puts["quiz"][01]

  save_data(data)

  message = request.params["quiz_name"]
  message.to_json

end
