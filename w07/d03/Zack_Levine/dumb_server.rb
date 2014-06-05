require 'rack'
require 'ap'

class QuizApp
    def call(request)
        puts "PRINTING THE REQUEST:"
        ap(request)

        # if env["REQUEST_METHOD"] == "GET"

        response = [
            200,
            {
                'Content-Type' => 'text/html'
            },
asdf
        ]

        puts "PRINTING THE RESPONSE:"
        ap(response)
    end
end

app = QuizApp.new()

Rack::Handler::WEBrick.run(app)
