require 'rack'
require 'ap'
require 'erb'
require 'json'


class QuizApp

    def call(request)
        print_request_to_console()
        assembe_the_static_part_of_the_headers()


        

        if request["REQUEST_METHOD"] == "GET"

            if request["PATH_INFO"] == "/"

                index_tmpl = ERB.new(File.read("index.erb"))
                templated_html_response_content = index_tmpl.result()

            elsif request["PATH_INFO"] == "/quizzes"

                # give this variable a better name
                json_response_content = {:quizzes => ['a', 'b', 'c']}.to_json

            end

        end

        # don't do this when we want to serve JSON
        layout_tmpl = ERB.new(File.read("layout.erb"))
        request_body = layout_tmpl.result(binding())

        response = [
            200,
            headers,
            [request_body]
        ]


        print_response_to_console()
        return_response_to_client()


        

        def print_request_to_console
            puts "PRINTING THE REQUEST:"
            ap(request)
        end

        def assembe_the_static_part_of_the_headers
            headers = {
            "Content-Type" => "text/html" # this should be application/json when we return the raw data
            }
        end

        def print_response_to_console
            puts "PRINTING THE RESPONSE:"
            ap(response)
        end

        def return_response_to_client
            return response
        end

    end
end

app = QuizApp.new()

Rack::Handler::WEBrick.run(app)
