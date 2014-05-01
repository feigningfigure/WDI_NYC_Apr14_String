require 'sinatra'
require 'sinatra/reloader'
# attr_accessor
# .length
#
# boolean
# def answer. ('who was the first man in space?')

# get '/answer/:answer' do

#      "who was the first man in space?"

#      if ("yuri_armstrong")
#      puts "true"

#      end
# end
# end
get '/' do

  'welcome'
end

get '/:answer' do
     user_answer = :answer

     case user_answer

          when "yuri"
          then
                "correct! good job"
          else #any other answer
               "wrong!"
          end

end

