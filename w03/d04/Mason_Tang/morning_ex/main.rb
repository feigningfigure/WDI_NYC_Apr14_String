require 'sinatra'
require 'sinatra/reloader'


get '/' do



erb :index
end


get '/:num' do

  @ectangle = params[:num]

  erb :multiple
end
