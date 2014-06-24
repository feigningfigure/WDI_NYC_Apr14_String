require 'rack'


class MyRequestWrapper

    def initialize(request_environment)
        @env = request_environment
    end

end


class MyResponseWrapper

    def initialize
    end


    def generate_rack_response()
        [
            200,
            {
                'Content-Type' => 'text/html'
            },
            [
                'Yo'
            ]
        ]
    end

end


class ToolbeltApp

    def call(request_environment)
        request = MyRequestWrapper.new(request_environment)
        response = MyResponseWrapper.new()
        return response.generate_rack_response()
    end

end

app = Rack::Builder.new do
    use Rack::Static, :index => 'index.html', :root => 'public', :urls => [""]
    run ToolbeltApp.new
end

Rack::Handler::WEBrick.run app
