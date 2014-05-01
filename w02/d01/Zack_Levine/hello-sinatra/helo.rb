require 'sinatra'
require 'sinatra/reloader'
require 'haml'

#routes
get '/' do
"  hello world"
end

#routes
get '/name/:name' do
    "Hello mah d00d #{params[:name]}!"
end

#routes
get '/tea/:name1/:name2' do
    "Hello #{params[:name1]}! Have tea with #{params[:name2]}!"
end

#routes
get '/battle/:name1/:name2' do
@battl_outcome = ["you lost to", "you beat"]
    "Hello #{params[:name1]}!..... FIGHT.. #{@battl_outcome.sample}
    #{params[:name2]}! </br>
   Hit refresh to play again" 
end

#404
not_found do
    halt 404, 'page not found 404 error you broked it'
end

#trivia
get '/quiz' do
  "Who was the first guy n space?"
end
get '/yuri_gagarin' do
  "right... who was the first guy on the moon"
end
get '/neil_armstrong' do
  "thats right ... whos michael jacksons sister?"
end
get '/janet_jackson' do
  "you win man"
end

#routes-abt me
get '/zackn9ne' do
  "<h1>Zack Rules</h1>"
end
get '/contact' do
  "<h1>contact Zack becasue he Rules</h1>"
end
get '/albums' do
  "<h1>Zack Rules</h1>"
end

#routs-lucnhr
get '/lunchr' do
  "help me pick a lunch <a href='/choice'>choose it</a>"
  end
get '/choice' do
  #run the trackkkkk
@choice_machine= ["chineseo", "deli", "friend chicken", "jamba juice", "pizza", "viet", "gob-stopper"]
  "<h2>eat this:</h2>#{@choice_machine.sample}"
end
