require 'sinatra'
require 'sinatra/reloader'

###THE BELOW CODE WILL ALLOW YOU PUT A MULTI-LINE STRING
# get '/' do
# 	<<-HTML
# 	<a href='http://www.google.com'>Go00000ogle</a>
# 	<a href='http://www.bing.com'>BING</a>
# 	HTML
# end

# get '/:name' do
# 	"Hello, my name is #{params[:name]}"
# end

get '/:name/:meal' do
	"I'm #{params[:name]} and I love #{params[:meal]}"
end

