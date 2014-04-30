require 'sinatra'


# get '/' do

# <<-HTML
#   <a href ='http://www.something.com'></a>
#   <a href ='http://www.something.com'></a>
#   HTML
# end

lunch = ["Tacos", "Deli Sandwich", "Salad", "Burgers", "Giant Pretzel", "Nothing Fatso", "Spaghetti", "Apple", "Alcohol", "Falafel"]

get '/' do
  <<-HTML
  <a href = 'http://localhost:4567/lunch'>"HELP ME PICK A LUNCH!"</a>
  HTML
end

get '/:lunch' do
 lunch.shuffle[01]
end


