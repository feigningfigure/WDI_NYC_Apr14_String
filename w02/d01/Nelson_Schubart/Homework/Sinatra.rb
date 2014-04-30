#pull request 'hw_w02_submission'
require 'sinatra'
require 'sinatra'

get '/name/:name' do
  "Hello #{params[:name]}!"
end



