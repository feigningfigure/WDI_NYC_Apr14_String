require 'sinatra'
require 'sinatra/reloader'

get '/' do
#   <<-HTML
#   <h1>About Me</h1>
#   <p> My name is Declan Van Welie </p>
#   HTML
# end
<<-ABOUT
<!DOCTYPE html>
<link rel="stylesheet" type="text/css" href="style.css">
<head>
  <title>Declan Van Welie</title>
</head>
<body>
  <header>
  <h1><a href="index.html">HI</h1>
   <ul>
      <li><a href="about.html">About Me</a></li>
      <li><a href="contact.html">Contact</a></li>
    </ul>
    <p>I'm a Brooklyn-based designer, illustrator, and artist. Nice to meet you!
    </p>
    <img src="assets/icon.png">
    </header>
</body>
ABOUT
end
#This will interpolate whatever we input  after the / for the url at localhost: 4567
get '/contact' do
  <<-CONTACT
  <h1>Contact</h1>
  <h5> declanv@gmail.com </h5>
  <p> 860.305.1914 </p>
  CONTACT
end

get '/albums' do
  <<-ALBUMS
  <ol>Top three albums
  <li> Highway 61 Revisited </li>
  <li> Paul Simon </li>
  <li> Slave Ambient </li>
  </ol>
  ALBUMS
end
