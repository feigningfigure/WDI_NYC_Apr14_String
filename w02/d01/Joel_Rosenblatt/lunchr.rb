require 'sinatra'
require 'sinatra/reloader'

get '/' do
  <<-HTML
    <a href='/choice'>Help me pick a lunch!</a>
  HTML
end

get '/choice' do
  number = rand(1..10)
  if number == 1
    <<-HTML
    <a href="https://www.chipotle.com">Chipotle all the way baby!</a>
    HTML
  elsif number == 2
    <<-HTML
    <a href="http://numpangnyc.com">It's NumPang today!</a>
    HTML
  elsif number == 3
    <<-HTML
    <a href="http://choptsalad.com">Keeping it healthy! CHOPT!</a>
    HTML
  elsif number == 4
    <<-HTML
    <a href="http://www.thegreydog.com">Let's do Grey Dog!</a>
    HTML
  elsif number == 5
    <<-HTML
    <a href="http://www.spicethainyc.com">How can you go wrong with Spice?</a>
    HTML
  elsif number == 6
    <<-HTML
    <a href="http://maxbrenner.com">Chocolate sounds about right. Max Brenner's!</a>
    HTML
  elsif number == 7
    <<-HTML
    <a href="http://www.japonicanyc.com">Who could hate sushi? Japonica!</a>
    HTML
  elsif number == 8
    <<-HTML
    <a href="http://www.wholefoodsmarket.com">Looks like its WholeFoods for you today. You hipster, you.</a>
    HTML
  elsif number == 9
    <<-HTML
    <a href="http://www.vapiano.com">Vapiano!</a>
    HTML
  elsif number == 10
    <<-HTML
    <a href="http://en.wikipedia.org/wiki/Mahatma_Gandhi">Sorry brah; you're skipping lunch today!</a>
    HTML

  end
end
