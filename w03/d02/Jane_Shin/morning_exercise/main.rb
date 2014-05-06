require 'sinatra'
require 'sinatra/reloader'

def comp
	x = rand (0..2)
	if x = 0
		@comp = "Computer chose Rock"
	elsif x = 1
		@comp = "Computer chose Paper"
	else x = 2
		@comp = "Computer chose Scissors"
	end
end

get '/play' do
	erb :play
end
get '/play/rock' do
	# 	x = rand (0..2)
	# if x = 0
	# 	@comp = "Computer chose Rock"
	# elsif x = 1
	# 	@comp = "Computer chose Paper"
	# else x = 2
	# 	@comp = "Computer chose Scissors"
	# end
	comp
	erb :rock
end
get '/play/paper' do
		x = rand (0..2)
	if x = 0
		@comp = "Computer chose Rock"
	elsif x = 1
		@comp = "Computer chose Paper"
	else x = 2
		@comp = "Computer chose Scissors"
	end
	erb :paper
end
get '/play/scissors' do
	erb :scissors
end


