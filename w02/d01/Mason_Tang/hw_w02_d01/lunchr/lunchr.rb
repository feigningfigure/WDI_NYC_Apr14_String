require 'sinatra'

get "/" do
<<-HTML
  <a href ="http://localhost:4567/lunch">Help me pick a lunch!</a>
  HTML

end


get "/lunch" do
  food = ["sandwich", "kebab", "seasame chicken", "chicken alfredo", "plain salad", "burrito", "chicharonnes", "mofongo", "baigan bhartha", "sushi" ].shuffle
  return "you should get #{food[0].to_s} for lunch"
end
