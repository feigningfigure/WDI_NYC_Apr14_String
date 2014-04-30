require 'sinatra'
require 'sinatra/reloader'
require "httparty"
# def initialize 
# 	# @prompt_fighters = prompt_fighters
# 	# @fighters = fighters
# 	# @name = name
# 	# @battle = battle 
# 	@winner = []
# end
get '/:name' do
  name = params[:name]
	"Hello, my name is #{params[:name].capitalize}"
end

get '/tea/:name1/:name2' do
	"#{params[:name1].capitalize} and #{params[:name2].capitalize} are having a lovely tea together!"
end

get '/battle/:name3/:name4' do 
	fighters = "#{params[:name3]}",
	 	"#{params[:name4]}"

end
	
