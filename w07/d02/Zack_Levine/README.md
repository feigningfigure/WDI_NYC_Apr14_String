CLASS w07d02 NOTES
^^^^ ------- ^^^^^
SINATRA REV

main.rb
Gemfile dont forget 2 $bundle
-source "http://rubygems.org"

----- APP  DOT JS -----
function setEventHandlers(){

$("#add-quiz").click(function(){
// blank function
console.log("thing got clicked");

	var $input = $("quiz-input");

//ajax method takes 1 param, a hash, url type and data type and what data
$.ajax(){

url:'/quizzes',
type:'post',
dataType:'json',
data: {quiz_name: $input.val()},
})

}

$( document ).ready(function(){
setEventHandlers();
//calling the setEveHandlrz
});

----- INDEX DOT ERB -----
----- MAIN DOT RB -----
require "sinatra"
require "sinatra/reloader"
require 'json'
FILENAME = "quiz_db"

def get_data()
	#if exists read it if not make a file with the else contents in it
else
	{"quizzes" => []}
end

def save_data(data)
	#dump the json data do this file
	raw = JSON.dump(data)
	File.open(FILENAME, 'w') do |file|
		file.write(raw)
	end
end
get "/" do
	"hello world!"
	erb :index
end

post '/quizzes' do
--->	binding.pry
------>   PRY> params <--- run iT!!!!!!!!!!	
------->    exit (u can go to nxt binding.pry)!!
	data = get_data()
#params in transit
	puts request
	puts request.params
	
	data["quizzes"].push(new_quiz)
	save_data(data)

	data.to_json

binding.pry
end
----- MAIN DOT RB -----


views/
-index.erb
-layout.erb -----------
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="javascripts/app.js"></script>

<%= yield %>
-----------------------
public/
-javascripts
--app.js
-stylesheets




----- EARLIER CLASS NOTES -----
	pry
require 'json'
data = JSON.parse('{"name":"Megaman","powerLevel":"rad"}')

require 'json'
data = {
	in the ruby format
	puts data_to_json()

	javascript paste string in there
	or $.stringify()

	Name: Zack_Levine
	Email: zackn9ne@gmail.com
	GitHub: zackn9ne
