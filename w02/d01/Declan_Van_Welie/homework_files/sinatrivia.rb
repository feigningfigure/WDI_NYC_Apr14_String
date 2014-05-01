require 'sinatra'
require 'sinatra/reloader'

get '/' do
  # Some kind of index or landing page
  "Who was the first man in space?"
end
get '/:answer' do
  case params[:answer]
  when "yuri_gagarin"
  "Correct. Who was the first man on the moon?"
  when "neil_armstrong"
  "Correct."
  "What was the first satellite in space?"
  when "sputnik"
  "Correct."
  "What was the name of the first monkey launched into space?"
  when "ham"
  "Correct."
  "Who was the first man to orbit the earth?"
  when "john_glenn"
  "Correct."
  "What does NASA stand for?"
  when "national_aeronautics_and_space_administration"
  "Correct."
  else
  "That's incorrect."
  end

end
