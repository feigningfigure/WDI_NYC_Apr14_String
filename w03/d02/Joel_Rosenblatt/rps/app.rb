require 'bundler'
  Bundler.require

get '/' do
  erb :index
end

get '/challenge_r' do


  erb :challenge_r
end

get '/challenge_p' do
 erb :challenge_p
end

get '/challenge_s' do
 erb :challenge_s
end
