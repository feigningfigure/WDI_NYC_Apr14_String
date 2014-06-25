

# max's rack app
# most basic possible server


require 'rack'
require 'ap'
require 'erb'

class QuizApp
    def call(request)
        puts "PRINTING THE REQUEST:"
        ap(request)

        headers =

        if request["REQUEST_METHOD"] == "GET"

            if request["PATH_INFO"] == "/"

                layout_templ = ERB.new(File.read("layout.erb"))
                index_templ = ERB.new(File.read("index.erb"))
                html_body = index_templ.result()
                request_body = layout_templ.result(binding())

            elsif request["PATH_INFO"] == "/quizzes"

                request_body = "<h1>Quiz List</h1>"

            end

        end

        response = [
            200,
            {
                'Content-Type' => 'text/html'
            },
            [request_body]
        ]

        puts "PRINTING THE RESPONSE:"
        ap(response)

        return response
    end
end

app = QuizApp.new()

Rack::Handler::WEBrick.run(app)
