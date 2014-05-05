require 'sinatra'
require 'sinatra/reloader'

get '/tea/:name/:name2' do
  "#{params[:name]}.capitalize and #{params[:name2]}.capitalize are having a lovely tea ceremony"
end


get "/battle/:name1/:name2" do
  names_array = Array.new
  names_array << params[:name1]
  names_array << params[:name2]
  names_array.shuffle!
  "#{names_array.pop.capitalize} beats #{names_array.pop.capitalize} !"
end
