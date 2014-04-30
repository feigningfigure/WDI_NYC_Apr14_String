##### Not degubed yet, but the architecture is there



# Sinatrivia
# Example:
# Request: '/'
# Response: "Who was the first man in space?"
# Request: '/yuri_gagarin'
# Response: "Correct. Who was the first man on the moon?"
# Request: '/neil_armstrong'
# Response: 'Correct. etc.'





require 'sinatra'
require 'sinatra/reloader'



class Question
	attr_accessor :prompt, :answer, :status, :answered_correctly

	def initialize(prompt, answer, been_asked = false, answered_correctly = nil)
		@prompt = prompt
		@answer = answer
		@been_asked = been_asked
		@answered_correctly = answered_correctly
	end

end

class Quiz_game
	attr_accessor :current_question, :current_correct_answer, :correct_score, :answered_counter, :user_answer, :hello_message_given

	def initialize(questions_arr	)
		
		@questions_arr = questions_arr
		@questions_arr.shuffle!
		
		@current_question = @questions_arr.first.prompt
		@current_correct_answer = @questions_arr.first.answer
		@correct_score = correct_score
		@answered_counter = answered_counter
		@user_answer = nil

		# @hello_message_given? = false

	end


	def update_scores
			@correct_score = @questions_arr.select {|question| question.answered_correctly == true}
			@answered_counter = @questions_arr.select {|question| question.been_asked == true}
	end

	def next_question()
		@questions_arr.shuffle!
		while @current_question.been_asked == false
			@current_question = @questions_arr.first
		end
	end
end

class Ui
	def initialize(quiz_game_obj)
		@quiz_game_obj =quiz_game_obj
		go()
	end

	def disp_hello_message
		return "Hello! Welcome to RubyQuiz!"
	end

	def disp_current_score
		return "You have answered #{quiz_game_obj.correct_score} of #{quiz_game_obj.answered_counter} questions correctly."
	end

	def disp_a_question
		return "<p><em> Put the answer to your question as a URI.</em></p>
				<p> #{quiz_game_obj.current_question()}</p>
				"
	end

	def disp_correct_answer_msg
		return "<p> Correct!
			<p> #{quiz_game_obj.current_question()}</p>
			<p> You answered #{quiz_game_obj.user_answer}.</p>
			<p> <a href = '/question'>Next question?</a></p>
			"
	end

	def disp_incorrect_answer_msg
		return "
		<p> Incorrect!
		<p> #{quiz_game_obj.current_question()}</p>
		<p> Correct answer is #{quiz_game_obj.current_correct_answer()}</p>
		<p> You answered #{quiz_game_obj.user_answer}.</p>
		"
	end

	def disp_next_question_link
		return "<p> <a href = '/question'>Next question? </a></p>"
	end

	def go
		get '/' do
			disp_hello_message()
			disp_current_score()
			disp_a_question()
		end

		get '/:URI' do
			
			
			choice = params[:URI]
			if choice == quiz_game_obj.current_correct_answer
				disp_current_score()
				disp_correct_answer_msg
				disp_next_question_link
			else
				disp_current_score
				disp_incorrect_answer_msg
				disp_next_question_link
			end
		end

end


	end
end




#CONFIG
$qustions_db_arr = []
$qustions_db_arr << Question.new('Dog?','woof')
$qustions_db_arr << Question.new('Cat?','meow')
$qustions_db_arr << Question.new('Cow?','moo')
$qustions_db_arr << Question.new('Frog?','ribbit')
$qustions_db_arr << Question.new('Crow?','caw')
$qustions_db_arr << Question.new('Fish?','blub blub blub')
$qustions_db_arr << Question.new('Cyote?','Ouuuuuu')
$qustions_db_arr << Question.new('chicken?','cluck')
$qustions_db_arr << Question.new('bird?','tweet')
$qustions_db_arr << Question.new('fox?','WHAT DOES THE FOX SAY?!')



#GO
quiz_game_obj = Quiz_game.new($qustions_db_arr)
ui = Ui.new(quiz_game_obj)













