require 'httparty'
require "sinatra"

## Get request via Httparty
# document = HTTParty.get("http://www.google.com/users")
# puts document

get "/"  do
	<h1>"Hello World!"</h1>
	<p>paragraph</p>
end