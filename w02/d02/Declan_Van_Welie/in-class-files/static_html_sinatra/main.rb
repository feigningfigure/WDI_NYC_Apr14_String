require 'sinatra'
require 'sinatra/reloader'



def make_heading(user_name)
  #This is afunction that makes new html strings
  "<h1>Welcome #{user_name}!}</h1>"
end


get '/' do
  redirect "/index.html"
end

#Will allow to pass new params in.
get '/home/:user_name' do
#calls function make heading to interpolate
make_heading(:params[:user_name])

end
