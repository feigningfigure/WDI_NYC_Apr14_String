require 'rack'
require 'ap'
require 'json'

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

        headers = {
          "Content-Type" => "text/html" # this should be application JSON
        }

        if request["REQUEST_METHOD"] == "GET"
          if request["PATH_INFO"] == "/"
              # create layout
              # create index
              # pass in index to layout
              index_tmpl = ERB.new(File.read("index.erb"))

              html_body = index_tmpl.result(binding)
          elsif request["PATH_INFO"] == "/quizzes"
            # give this variable a better name
              html_body = "<h1>Quiz List</h1>"
          end
        end

        # don't do this when we want to serve JSON
        layout_tmpl = ERB.new(File.read("layout.erb"))
        # right now we are returning html
        request_body = layout_tmpl.result(binding())

        response = [
          '200',
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
# takes environment hash as an argument

Rack::Handler::WEBrick.run(app)

# binding creates a bucket with all of your variables
# binding objects: pass a reference to all variables available
