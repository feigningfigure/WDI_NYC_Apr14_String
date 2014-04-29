require 'sinatra'
require_relative 'db/foods'

get "/" do
<<-HTML
  <a href="http://localhost:4567/lunch">Help me pick a lunch!</a>

HTML
end

get "/lunch" do

  food_suggestion = rand(0...10)
  "You should totally chow down on #{$foods[food_suggestion]}"
  end
