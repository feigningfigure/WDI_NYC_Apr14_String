require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'json'

FILENAME = "quiz_db"

def get_data()
  if File.exists?(FILENAME)
    results = JSON.parse(File.read(FILENAME))
    return results
  else
    # javascript doesn't have symbols, so this is a string
    {"quizzes" => []}
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

post '/quizzes' do
  content_type :json
  # once you get the data, it needs to get manipulated and saved.
  data = get_data
  #{"quizzes" => } Is what your data variable should no look like. But it may not be empty
  puts request
  puts request.params
  new_quiz = request.params["quiz_name"]
  data["quizzes"].push(new_quiz)
  save_data(data)
  data.to_json
end

# persist things by just saving them into the array
