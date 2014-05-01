require 'sinatra'
require 'sinatra/reloader'

get '/' do
	<<-HTML
	<a href="http://localhost:4567/lunch_options">"Help me pick a lunch!"<a>
	HTML
end

get '/lunch_options' do 
	lunches = ["Chipotle!", "Chopt!", "Taboonette!", "Num Pang!", "Maison Kayser!", "Au Bon Pain!", "Shake Shack!", "Vapianos!", "Taqueria!", "Eataly!"].shuffle
	return "Go to #{lunches[0].to_s}"
end