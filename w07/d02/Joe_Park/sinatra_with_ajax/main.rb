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
    {"quizzes" => []}
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

get '/quizzes' do
  content_type :json

  db_contents = get_data

  db_contents.to_json

end

post '/quizzes' do
  content_type :json

  # binding.pry
  data = get_data
  puts request
  puts request.params
  # binding.pry
  new_quiz = {"title" => request.params["quiz_name"]}

  data["quizzes"].push(new_quiz)

  save_data(data)

  data.to_json
  # binding.pry
end