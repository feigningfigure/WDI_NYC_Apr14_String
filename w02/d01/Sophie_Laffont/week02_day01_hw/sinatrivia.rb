require 'sinatra'
require 'sinatra/reloader'




get "/" do
	"Who was the first man in space?"
end


get "yuri_gagarin" do
		"Correct. Who was the first man on the moon?"
end 

get "/neil_armstrong" do
		"Correct"
	end




