require 'rack'
require 'ap'
require 'erb'

class QuizApp
    def call(request)
        puts "PRINTING THE REQUEST:"
        ap(request)

        if request["REQUEST_METHOD"] == "GET"
            
            if request["PATH_INFO"] == "/"
                
                template = ERB.new("<%= test %>")
                test = template.request(binding)

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
            [body]
        ]

        puts "PRINTING THE RESPONSE:"
        ap(response)

        return response
    end
end

app = QuizApp.new()

Rack::Handler::WEBrick.run(app)