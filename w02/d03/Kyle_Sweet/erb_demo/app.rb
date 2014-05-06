require 'sinatra'
require 'sinatra/reloader'


 get '/' do
  erb :index
 end

 get '/:name' do
  @name = params[:name] #use instance variable to equal the set parameters

  erb:name

end
