PRINTING THE REQUEST:
{
       "GATEWAY_INTERFACE" => "CGI/1.1",
               "PATH_INFO" => "/favicon.ico",
            "QUERY_STRING" => "",
             "REMOTE_ADDR" => "::1",
             "REMOTE_HOST" => "localhost",
          "REQUEST_METHOD" => "GET",
             "REQUEST_URI" => "http://localhost:8080/favicon.ico",
             "SCRIPT_NAME" => "",
             "SERVER_NAME" => "localhost",
             "SERVER_PORT" => "8080",
         "SERVER_PROTOCOL" => "HTTP/1.1",
         "SERVER_SOFTWARE" => "WEBrick/1.3.1 (Ruby/1.9.3/2013-06-27)",
               "HTTP_HOST" => "localhost:8080",
         "HTTP_CONNECTION" => "keep-alive",
             "HTTP_ACCEPT" => "*/*",
         "HTTP_USER_AGENT" => "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36",
    "HTTP_ACCEPT_ENCODING" => "gzip,deflate,sdch",
    "HTTP_ACCEPT_LANGUAGE" => "en-US,en;q=0.8",
             "HTTP_COOKIE" => "_cookly_session=TkJPN1VLNS9tTmNERUExcFdLdVVYOGJsazVwTHljSk1iM3lVZWR1ZzRYTEFoUHk0eHBIdW1LNUh4VG9KZVdHTEhacWNJVHlldVN5QTBlOGlsOUxra3h0bTRscEZqdUkvSWdWTVJIbU9aZlBQT1JsUWdRYitpWi9VcGZuNjU1cmpTdVZEWFZQRk40cGxpMWZPeUlPak9RPT0tLXpEVmtpRUJtTzNVN3NmakxXK3p5Nnc9PQ%3D%3D--f71e2095616a4c696d457237323039748d3e9b50; request_method=GET; _in_context_session=OXRuRmoyQjRxNEUybXpZNU0rSnNrd0pILzJ3czM1OUdVUXY5VHFoZ1k5Yk1QM28xM3h5T0g0WjlCeEVXV2JteHZzVG8xSFRHOWxYWXlJU2d3WTNhckZ3RzZlc0NHdGdHVGRjUytrMys1OFkzOWRjdXFNUGthaFJhaHFBOGlVMUkvT1BMenJvZHpaNndjSEdFOUt0S3dRPT0tLTRkaWdOZGduR0tlYzF6K3Q5aTFDQUE9PQ%3D%3D--5d379a4dfdf5b45d4f051cae1067d71437775cd3",
            "rack.version" => [
        [0] 1,
        [1] 2
    ],
              "rack.input" => #<StringIO:0x007f8c9910c2a0>,
             "rack.errors" => #<IO:<STDERR>>,
        "rack.multithread" => true,
       "rack.multiprocess" => false,
           "rack.run_once" => false,
         "rack.url_scheme" => "http",
            "HTTP_VERSION" => "HTTP/1.1",
            "REQUEST_PATH" => "/favicon.ico"
}
PRINTING THE RESPONSE:
[
    [0] "200",
    [1] {
        "Content-Type" => "text/html"
    },
    [2] [
        [0] "A barebones rack app."
    ]
]

##########################

[2] pry(main)> require 'erb'
true
[3] pry(main)> ERB
ERB < Object
[4] pry(main)> template = ERB.new("My name is <%= my_name %>")
#<ERB:0x007fdf512b51a0 @safe_level=nil, @src="#coding:UTF-8\n_erbout = ''; _erbout.concat \"My name is \"; _erbout.concat(( my_name ).to_s); _erbout.force_encoding(__ENCODING__)", @enc=#<Encoding:UTF-8>, @filename=nil>
[5] pry(main)> my_name = "Max"
"Max"
[6] pry(main)> template.result(binding)
"My name is Max"
