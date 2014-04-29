require 'sinatra'
require 'sinatra/reloader'


question_array = ["<h2>Correct.</h2><p>Who sang the popular song 'Purple Rain'?</p>","<h2>Correct.</h2><p>What year was the moon landing?</p>", "<h2>Correct.<h2><p>Which city's NFL team won Super Bowl 46?</p>", "<h2>Correct.</h2><p>What year was The General Assemb.ly founded?</p>", "<h2>Correct.</h2><p>Who loves orange soda?</p>", "<h2>Correct.</h2><p>Ozzy Ozbourne famously bit the head off which animal?<p>","<h2>Correct.</h2><p>Often thought of as the smoothest voice in history, which actor caught his big break in 'Driving Miss Daisy'</p>"]
num_array = []
for num in (0..question_array.length)
	num_array << num
end
answer_array = ["prince","1969","new_york","2011","kel","bat","morgan_freeman"]
num_array = num_array.shuffle

get '/' do
	"<h1>Sinatrivia!</h1><h2>Let's begin!</h2><a href=http://localhost:4567/#{answer_array[num_array[0]]}>Is Ruby fun? (Click here if yes is your answer)</a>"
end

#in order to continue the program
#the answer params build on the previous page
#insert http address like this "localhost:4567/answer1/answer2/answer3" and so on...

get "/#{answer_array[num_array[0]]}/#{answer_array[num_array[1]]}/#{answer_array[num_array[2]]}/#{answer_array[num_array[3]]}/#{answer_array[num_array[4]]}/#{answer_array[num_array[5]]}" do
	"<h2>Congratulations.</h2><p>You win! That was easy.<p>"
end
get "/#{answer_array[num_array[0]]}/#{answer_array[num_array[1]]}/#{answer_array[num_array[2]]}/#{answer_array[num_array[3]]}/#{answer_array[num_array[4]]}" do
	question_array[num_array[5]]
end
get "/#{answer_array[num_array[0]]}/#{answer_array[num_array[1]]}/#{answer_array[num_array[2]]}/#{answer_array[num_array[3]]}" do
	question_array[num_array[4]]
end
get "/#{answer_array[num_array[0]]}/#{answer_array[num_array[1]]}/#{answer_array[num_array[2]]}" do
	question_array[num_array[3]]
end
get "/#{answer_array[num_array[0]]}/#{answer_array[num_array[1]]}" do
	question_array[num_array[2]]
end
get "/#{answer_array[num_array[0]]}" do
	question_array[num_array[1]]
end

get '/:dumb' do
	answer = params[:dumb]
	if answer != "scoobydoobydooby"
		"<h1>Incorrect!</h1><p>Reload previous page and try again.</p><h2>Unless you're a quitter!</h2>" 
	end
end
