require 'rack'
require 'ap'
require 'erb'

class QuizApp
  def call(request)
    puts "PRINTING THE REQUEST:"
    ap(request)

    if request["REQUEST_METHOD"] == "GET"
      
      if request["PATH_INFO"] == "/"
          
        layout_tmpl = ERB.new(File.read("layout.erb"))
        
        index_tmpl = ERB.new(File.read("index.erb"))

        html_body = index_tmpl.result(binding)

        request_body = layout_tmpl.result(binding)
  
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

Rack::Server.new( { :app => app, :server => 'webrick', :Port => 8080} ).start