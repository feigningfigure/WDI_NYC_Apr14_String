require 'sinatra'
require 'sinatra/reloader'


get "/" do
  "<h1>ABOUT ME</h1>\n<h3>Welcome to this page.</h3>\n
  <p>You are about to read all about me me me.<\p>"
end

get "/contact" do
  "<h1>CONTACT ME</h1>\n<h3>212-555-5555.</h3>\n
  <p>Call me or email me for more information.<\p>"
end

get "/albums" do
 "<p>Smashing Pumpkins - Cherub Rock\nFleetwood Mac - Rumours\nCut Copy - In Ghost Colours<\p>"
end
