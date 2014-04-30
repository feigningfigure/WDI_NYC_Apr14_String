require 'sinatra'
require 'sinatra/reloader'

get '/' do
  "Hello world!"
end

get '/tea/:name1/:name2' do
  "A beautiful day for #{params[:name1]} and #{params[:name2]} to have tea!"
end

get '/battle/:name1/:name2' do
  fight = ["#{params[:name1]}", "#{params[:name2]}"]
      a = "#{fight.sample}"
      b = "#{fight.sample}"
    until a != b
      a = "#{fight.sample}"
      b = "#{fight.sample}"
    end
      "#{a} beats #{b}, sucker!"
end

