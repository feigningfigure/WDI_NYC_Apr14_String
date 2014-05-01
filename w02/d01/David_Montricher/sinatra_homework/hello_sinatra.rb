require 'sinatra'

# introductory greeting to program
get '/' do
  "Hello, Sinatra! Give me a name and I'll say hello, or give me a meal and two people."
end
# method greets a name
get '/name/:name' do
  "Hello #{params[:name]}, I'm Sinatra. Nice to meet you!"
end
# method prints meal cemeremony for two
get '/meal/:name1/:name2' do
  "#{params[:name1].capitalize} along with #{params[:name2].capitalize} are having a lovely tea ceremony"
end
# this method needs to randomly choose a winner between the 2 names
get "/battle/:name1/:name2" do
  names_array = Array.new
  names_array << params[:name1]
  names_array << params[:name2]
  names_array.shuffle!
  "#{names_array.pop.capitalize} beats #{names_array.pop.capitalize} !"
end


