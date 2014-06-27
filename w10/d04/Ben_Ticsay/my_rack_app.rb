# my_rack_app.rb
 
require 'rack'
require 'awesome_print'

class MyApp

  def initialize()
    @times_called = 0
  end

  def call(env)
    @times_called += 1

    code = 200
    headers = {'Content-Type' => 'text/html'}
    body = ["A barebones rack app that has been called #{@times_called} times."]

    ap env, :indent => -6

    case env["REQUEST_METHOD"]
    when "GET"
      case env["PATH_INFO"] 
      when "/favicon.ico"
        code = 404
      end
    when "POST"
    end

    [
      code,
      headers,
      body
    ]
  end  

end
 
Rack::Handler::WEBrick.run(MyApp.new)

# app = Proc.new do |env|
#     ['200', {'Content-Type' => 'text/html'}, ['A barebones rack app.']]
# end

# Rack::Handler::WEBrick.run(app)





# RESOURCES:
# http://rack.github.io/
# https://github.com/rack/rack.github.com/commits/master
# http://mcantor.github.io/
# https://rawgit.com/rack/rack.github.com/24c07d3038bc181f0394d59e59aa7dfe2e70064b/index.html
# http://chneukirchen.org/blog/archive/2007/02/introducing-rack.html
# http://localhost:8080/
# http://stackoverflow.com/questions/5891567/cant-stop-webrick-1-3-1-with-ctrl-c-on-ubuntu-11-04
# https://github.com/mcantor/dumb_server
# http://rack.github.io/




