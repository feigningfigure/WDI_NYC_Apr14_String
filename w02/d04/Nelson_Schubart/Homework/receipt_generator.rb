
require 'sinatra'
require 'sinatra/reloader'

#Ask for the name of the good/service provided
#Ask for the cost of the good/service provided
#Print a receipt


get '/' do
  erb :welcome
end


get '/:good' do
  erb :good
end

get '/:good/:service' do
  erb :good
end

# Company Name: Particular Assembly Inc.
# Good/Service Provided: Web-Development Refactoring
# Cost: $1,329.99
# Thank you for your patronage

