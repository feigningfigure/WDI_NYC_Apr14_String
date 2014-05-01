# ###Hello, Sinatra!

# - Example:
# - Request: '/name/neel'
# - Displaced Response: Hello Neel!
# - Request: '/name/omar'
# - Displaced Response: Hello Omar!
# - Request: '/name/keri'
# - Displaced Response: Hello Keri!


require 'sinatra'
require 'sinatra/reloader'

get '/' do
	'hello world'
end


get '/name/:name' do
	"Hello #{params[:name]}!"
end



# Example:
# Request: '/tea/neel/omar'
# Response: 'neel and omar are having a lovely tea ceremony'
# Request: '/battle/matt/omar'
# Response: omar beats neel.
# note: the winner should be randomly generated.


get '/tea/:name1/:name2' do
	"#{params[:name1]} and #{params[:name2]} are having a lovely tea ceremony."
end

get '/battle/:name1/:name2' do
	if rand(2) == 0																	#Rand(2) returns either 1 or 0
		"#{params[:name1]} beats #{params[:name2]}!"
	else #rand(2) == 1
		"#{params[:name2]} beats #{params[:name1]}!"
	end
end


