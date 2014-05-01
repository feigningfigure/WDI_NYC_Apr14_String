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
	attr_accessor :question, :answer, :status

	def initialize(question, answer, been_asked = false)
		@question = question
		@answer = answer
		@been_asked = been_asked
	end

end



class Processor
	attr_accessor :question, :answer

	def initialize()
		# @question = Question.new ("", "", false)
		# @answer = ""
	end

	def load_up_new_question
		if $questions.length == 0
		 	return 'All done!'
		end
		
		$questions.shuffle!
		question = $questions.pop
	end

	def ask_question	
		return question.question.to_s
	end

	def process_answer
		question
	end
end



def go(processor)
	get '/' do
		processor.load_up_new_question()
		"
		<p><em> Put the answer to your question as a URI.</em></p>
		<p> #{processor.ask_question()}</p>
		"
	end

	get '/:answer' do
		"processor.process_answer"

		# <p>You answered #{:answer}<p>
		# <p>Your answer

	end
end


processor001 = Processor.new

$questions = []
$questions << Question.new('Dog?','dog', false)
$questions << Question.new('Cat?','meow', false)
puts $questions



go(processor001)







