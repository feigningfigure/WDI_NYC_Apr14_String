require 'sinatra'
require 'sinatra/reloader'

get '/' do
	@num = 1
	erb :blocks
end

get '/:num' do
	@num = paras[:num].to_i
	erb :blocks
end