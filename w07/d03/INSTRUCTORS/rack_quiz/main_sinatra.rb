require 'ap'
require 'sinatra'
require 'json'

$quizzes = []

get "/" do
    redirect to("/quizzes")
end

get "/quizzes" do
    request.accept.each do |type|
        case type.to_s
        when "text/html"
            @quizzes = $quizzes
            halt erb :index
        when "application/json"
            content_type :json
            response = {"quizzes" => $quizzes}.to_json()
            halt response
        end
    end
end

post "/quizzes" do
    content_type :json
    $quizzes.push({"quiz_name" => params["quiz_name"]})
    {"message" => "Success"}.to_json()
end
