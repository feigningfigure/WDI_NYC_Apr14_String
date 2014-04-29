require 'sinatra'
require 'sinatra/reloader'
require_relative 'animal.rb'
require_relative 'person.rb'
require_relative 'shelter.rb'

get "/" do
  "<html>
  <h1>Welcome to Happitails Animal Shelter!</h1>
  <p><h2>Please choose from the menu below:</h2></p>
    <p><a href='/display_animals'>Display Animals</a></p>
    <p><a href='/display_clients'>Display Clients</a></p>
    <p><a href='/put_adoption'>Put Animal Up For Adoption</a></p>
    <p><a href='/join_happi'>Join Happitails Family</a></p>
    <p><a href='/adopt_animal'>Adopt Animal</a></p>
    <p><a href='/quit'>Quit</a></p>
    </html>"
end

get "/display_animals" do
  "Happitails has #{$client_count} wonderful pets."
end

get '/display_clients' do
  "See below for a complete list of clients."
  "#{$display_clients}"
end

get '/put_adoption/:adp_name' do
  "What is the name of the animal that you wish to abandon?"
  "#{params[:adp_name]} has been accepted to Happitails."
end

get '/join_happi/:name' do
  "Congratulations #{params[:name]} ! Welcome to Happitails."
end

get '/adopt_animal/:name' do
  " #{params[:name]} has been accepted to Happitails."
end

get '/quit' do
  "Bye!"
end
