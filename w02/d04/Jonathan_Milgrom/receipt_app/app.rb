require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :index
end

post '/receipt' do
	@company_name = params[:company_name]
	@good_services = params[:good_services]
	@cost = params[:cost]

	erb :receipt

end

