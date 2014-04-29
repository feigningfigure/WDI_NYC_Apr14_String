require 'sinatra'
require 'sinatra/reloader'

$questions = [
  ["Who was the first man in space\?","yuri_gagarin"],
  ["Who was the first man on the moon\?","neil_armstrong"],
  ["Who was the first dog in space\?","laika"],
  ["Who was the first monkey in space\?","albert"],
  ["Who was the first man to orbit the earth\?","john_glenn"],
  ["Who was the first woman in space\?","valentina_tereshkova"]
  ]

get "/" do
  $questions = $questions.shuffle
  # @current_question = $questions[0]
  "#{$questions[0][0]}"
end

get "/:answer" do
  if $questions.length == 0
    "You win! You answered all of the questions!"
  elsif params[:answer] == $questions[0][1]
    $questions.delete_at(0)
    $questions = $questions.shuffle
    "Correct! #{$questions[0][0]}"
  else
   "Try Again. #{$questions[0][0]}"
  end
end


# require 'sinatra'
# require 'sinatra/reloader'

# $questions = [
#   ["Who was the first man in space\?","yuri_gagarin"],
#   ["Who was the first man on the moon\?","neil_armstrong"],
#   ["Who was the first dog in space\?","laika"],
#   ["Who was the first monkey in space\?","albert"],
#   ["Who was the first man to orbit the earth\?","john_glenn"],
#   ["Who was the first woman in space\?","valentina_tereshkova"]
#   ]

# get "/" do
#   $questions = $questions.shuffle
#   # @current_question = $questions[0]
#   "<h1>#{$questions[0][0]}</h1>"
# end

# # get "/:answer" do
# #   if $questions.length == 0
# #     "You win! You answered all of the questions!"
# #   elsif params[:answer] == $questions[0][1]
# #     $questions.delete_at(0)
# #     # $questions = $questions.shuffle
# #     "<h1>Correct! #{$questions[0][0]}</h1>"
# #   else
# #    "<h1>Try Again. #{$questions[0][0]}</h1>"
# #   end
# # end

# get "/:answer" do
#   if $questions.length == 0
#     "You win! You answered all of the questions!"
#   elsif params[:answer] == $questions[0][1]
#     $questions.delete_at(0)
#     # $questions = $questions.shuffle
#     "Correct! #{$questions[0][0]}"
#   else
#    "Try Again. #{$questions[0][0]}"
#   end
# end
