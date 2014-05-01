#w02d03 Class Notes on ERB

require 'sinatra'

#ERB
get '/' do
  erb :index #file name in erb
end

get '/:name' do
  @name = params[:name] #set up an instance variable to be called in name.erb
  erb :name #name files in erb
end
