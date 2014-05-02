require 'sinatra'
require 'sinatra/reloader'




get '/' do
erb :index
end


get '/:receipt' do
@form1 = params[:form1]
@form2 = params[:form2]
@form3 = params[:form3]
erb :receipt
end
