require 'rack'
require 'awesome_print'
require 'erb'
require 'json'


class QuizApp
    def call(request)
        puts "PRINTING THE REQUEST:"
        ap(request)

        headers = {
            "Content-Type" => "text/html" # this should be application/json when we return the raw data
        }

        if request["REQUEST_METHOD"] == "GET"

            if request["PATH_INFO"] == "/"

                index_tmpl = ERB.new(File.read("index.erb"))
                html_body = index_tmpl.result()

            elsif request["PATH_INFO"] == "/quizzes"

                # give this variable a better name
                html_body = {:quizzes => ['a', 'b', 'c']}.to_json

            end

        end

        # don't do this when we want to serve JSON
        # layout_tmpl = ERB.new(File.read("layout.erb"))
        # request_body = layout_tmpl.result(binding())



        response = [
            200,
            headers,
            [request_body]
        ]

        puts "PRINTING THE RESPONSE:"
        ap(response)

        return response
    end
end

app = QuizApp.new()

Rack::Handler::WEBrick.run(app)
