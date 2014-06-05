require 'rack'
require 'ap'

# got to localhost 8080
# THEN
# the below prints the environment variables in the server log
# ap() #adds awesome print

# we are just working with a data structure that represents the request

# the 'barebones rack app' is a data structure that represents the response

class QuizApp
    def call(request)
      puts "PRINTING THE REQUEST:"
        ap(request) # awesome print request
        if request["REQUEST_METHOD"] == "GET"
          if request["PATH_INFO"] == "/"
              body="<h1>My Quiz App</h1>"
          elsif request["PATH_INFO"] == "/quizzes"
              body = "<h1>Quiz List</h1>"
          end
        end


        response = [
          '200',
          {
              'Content-Type' => 'text/html'
            },
          ['A barebones rack app.']
        ]
        puts "PRINTING THE RESPONSE:"
        ap(response)
        return response
  end
end

app = QuizApp.new()
# takes environment hash as an argument

Rack::Handler::WEBrick.run(app)
