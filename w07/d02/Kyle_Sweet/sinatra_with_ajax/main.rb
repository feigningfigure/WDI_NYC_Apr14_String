require 'sinatra'
require 'sinatra/reloader'

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


post '/quizzes' do
  # we want the ajax request from the scripts.js hash to go here when that button is clicked.
  data = get_data
  puts request
  puts request.params


  new_quiz = request.params["quiz_name"]
  data["quizzes"].push(new_quiz)



  save_data(data)

end
