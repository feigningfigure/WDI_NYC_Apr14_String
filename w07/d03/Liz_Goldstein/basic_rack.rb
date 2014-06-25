

# max's rack app
# most basic possible server


require 'rack'
require 'ap'

class QuizApp

    def call(request)
        puts "PRINTING THE REQUEST:"
        ap(request)   ## uses AWESOME PRINT gem to print out server log!

        if request["REQUEST_METHOD"] == "GET"
          if request["PATH_INFO"] == "/"
            body = "<h1>My Quiz App</h1>"
          elsif request["PATH_INFO"] == "/quizzes"
            body = "<h1>Quiz List</h1>"
          end
        end

        response = [
            200,
            {
                'Content-Type' => 'text/html'
            },
            ['<h1>Heyo!</h1>']
        ]

        puts "PRINTING THE RESPONSE:"
        ap(response)
    end
end

app = QuizApp.new()

Rack::Handler::WEBrick.run(app)
