#It takes two quiz
require 'sinatra'
require 'sinatra/reloader'

# Home Path
get '/tea/:name/:name2' do
	"I'm #{params[:name]}.capitalize and i'm, #{params[:name2]}.capitalize, we like tea."
end

get "/battle/:name1/:name2" do
  names_array = Array.new
  names_array << params[:name1]
  names_array << params[:name2]
  names_array.shuffle!
  "#{names_array.pop.capitalize} beats #{names_array.pop.capitalize} !"
end
