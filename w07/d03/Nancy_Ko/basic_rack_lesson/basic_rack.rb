require 'rack'
require 'ap'
require 'erb'
require 'json'

class QuizApp
    def call(request)
        puts "PRINTING THE REQUEST:"
        ap(request)

        headers = {

            "CONTENT_TYPE" => "text/html"
        }

        if request["REQUEST_METHOD"] == "GET"
            
            if request["PATH_INFO"] == "/"

                

                # template = ERB.new("value of the test: <%= test %>")
                # test = "Hello this is a template"
                # layout_tmpl = ERB.new(File.read("layout.erb"))
                # index_tmpl = ERB.new(File.read("index.erb"))
                html_body = index_tmpl.result(binding)

                headers["CONTENT_TYPE"] = "application.json"
                request_body = layout_tmpl.result(binding)

                body = "<h1>My Quiz App</h1>"
            
            elsif request["PATH_INFO"] == "/quizzes"
        
                # body = "<h1>Quiz List</h1>"
                html_body = {:quizzes => ["a", "b", "c"]}.to_json
        
            end
        
        end

        if headers["Content-Type"] == "text/html"

            layout_tmpl = ERB.new(File.read("layout.erb"))
            index_tmpl = ERB.new(File.read("index.erb"))
        end

# error handling 
        response = [
            200,
            {
                "Content-Type" => "text/html"
            },
            # [body]
        ]

        puts "PRINTING THE RESPONSE:"
        ap(response)

        return response
    end
end

app = QuizApp.new()

# Rack::Handler::WEBrick.run(app)
Rack::Server.new( { :app => app, :server => "webrick", :Port => 8080} ).start