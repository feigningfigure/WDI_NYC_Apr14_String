require 'sinatra'
require 'sinatra/reloader'

get "/" do
 "Hello World"
end

get "/:one/:name1/:name2" do
  case params[:one]
  when "tea"
  "<h1>#{params[:name1]} and #{params[:name2]} are have a lovely #{:beverage} ceremony</h1>"
  when "battle"
  "<h1>#{params[:name2]} beats #{params[:name1]}</h1>"
  end
end

# get "/:conflict/:name1/:name2" do
#   if params[:conflict] == "battle"
#   "<h1>#{params[:name2]} beats #{params[:name1]}</h1>"
#   end
# end
