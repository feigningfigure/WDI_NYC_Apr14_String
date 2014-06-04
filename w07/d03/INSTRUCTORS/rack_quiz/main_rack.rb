require 'rack'
require 'rack/utils'
require 'ap'
require 'erb'
require 'json'

def relative_filename(filename)
    # This way, files will be served correctly even if the script
    # is run from outside the rack_quiz directory.
    File.expand_path("../#{filename}", __FILE__)
end

def template(name)
    ERB.new(File.read(relative_filename("views/#{name}.erb")))
end

def layout
    template(:layout).result(binding())
end

class QuizApp
    def initialize
        @quizzes = []
    end

    def call(env)
        puts "\nPRINTING THE REQUEST:"
        ap(env); puts

        @code = 200
        @headers = { "Content-Type" => "text/html" }
        @body = nil

        case env["REQUEST_METHOD"]
        when "GET"
            handle_get_request(env["PATH_INFO"], env["HTTP_ACCEPT"])
        when "POST"
            handle_post_request(env["PATH_INFO"], env["HTTP_ACCEPT"], env["rack.input"])
        end

        handle_content_type()

        response = [
            @code,
            @headers,
            [@body] # Rack demands that the body be an Enumerable (Array)
        ]

        puts "PRINTING THE RESPONSE:"
        ap(response); puts

        puts "PRINTING RACK'S LOG:"
        return response
    end

    def handle_get_request(path, accept)
        case path
        when "/"
            redirect_to("/quizzes")

        when "/quizzes"
            if accept.include?("text/html")
                @html_body = template(:index).result(binding)

            elsif accept.include?("application/json")
                @body = {"quizzes" => @quizzes}
                @headers["Content-Type"] = "application/json"
            end

        when "/script.js"
            @body = File.read(relative_filename("public/script.js"))
            @headers["Content-Type"] = "text/javascript"

        when "/favicon.ico"
            # This will print a blast of scary gobbledegook when we log the request!
            @body = File.read(relative_filename("public/favicon.ico"))
            @headers["Content-Type"] = "image/x-icon"
        end
    end

    def handle_post_request(path, accept, body_stream)
        # Only POST requests have bodies.
        request_body = body_stream.read() #=> "quiz_name=What+US+president+are+you%3F"
        params = Rack::Utils.parse_query(request_body) #=> {"quiz_name" => "What US president are you?"}

        case path
        when "/quizzes"
            @quizzes.push({"quiz_name" => params["quiz_name"]})
            @body = {"message" => "Success"}
            @headers["Content-Type"] = "application/json"
        end
    end

    def handle_content_type()
        case @headers["Content-Type"]
        when "text/html"
            # When we're serving HTML, wrap it in the layout.
            @body = layout { @html_body }

        when "application/json"
            # When we're serving JSON, convert the response body to JSON.
            @body = @body.to_json()
        end
    end

    def redirect_to(url)
        @code = 302
        @headers["Location"] = url
    end
end

# Give our app to Rack and let it spin up a server for us.
Rack::Handler::WEBrick.run(QuizApp.new)
