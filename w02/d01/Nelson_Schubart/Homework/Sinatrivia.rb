require 'sinatra'

get '/' do
  "Who was the first man in space?"
  if get '/yuri_gagirin' do
  "Correct. Who was the first man on the moon?"
    if get '/neil_armstrong' do
      "Correct. You win"
    # getting an error from else
    else
    "Incorrect. Try again!"
    end
  else
  "Incorrect. Try again!"
  end
end
