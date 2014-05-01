require 'sinatra'
require 'sinatra/reloader'




get "/tea/:person1/:person2" do
	"#{params[:person1]} and #{params[:person2]} are having a lovely tea ceremony."
end


get "/battle/:person1/:person2" do
		result = ["#{params[:person1]}", "#{params[:person2]}"].shuffle
		person1 = result[0]
		person2 = result[1]
		"#{person1} has beat #{person2}"	
	end

