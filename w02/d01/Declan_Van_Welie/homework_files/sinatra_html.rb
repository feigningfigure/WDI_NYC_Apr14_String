require 'sinatra'
require 'sinatra/reloader'

get '/' do
  <<-HTML
  <h1>About Me</h1>
  <p> My name is Declan Van Welie </p>
  HTML
end

# get '/about' do
# <<-ABOUT
# <!DOCTYPE html>
# <link rel='stylesheet' type='text/css' href='style.css'>
# <head>
#   <title>Declan Van Welie</title>
# </head>
# <body>
#   <header>
#   <h1><a href='http://localhost:4567'>HI</h1>
#    <ul>
#       <li><a href='http://localhost:4567/about'>About Me</a></li>
#       <li><a href='http://localhost:4567/contact'>Contact</a></li>
#       <li><a href='http://localhost:4567/albums'>Favorite Albums</a></li>
#     </ul>
#     <p>I'm a Brooklyn-based designer, illustrator, and artist. Nice to meet you!
#     </p>
#     </header>
# </body>
# ABOUT
# end
#This will interpolate whatever we input  after the / for the url at localhost: 4567
get '/contact' do
  # <<-CONTACT
  # <!DOCTYPE html>
  # <link rel='stylesheet' type='text/css' href='style.css'>
  # <head>
  #   <title>Declan Van Welie</title>
  # </head>
  # <body>
  #   <header>
  #   <h1><a href='http://localhost:4567'>HI</h1>
  #    <ul>
  #       <li><a href='http://localhost:4567/about'>About Me</a></li>
  #       <li><a href='http://localhost:4567'>Home</a></li>
  #       <li><a href='http://localhost:4567/albums'>Favorite Albums</a></li>
  #     </ul>
  #     <p><a href='mailto:declanv@gmail.com'> declanv@gmail.com</a>
  #     </p>
  #     </header>
  # </body>
  # CONTACT
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

  # <<-ALBUMS
  # <link rel='stylesheet' type='text/css' href='style.css'>
  # <head>
  #   <title>Declan Van Welie</title>
  # </head>
  # <body>
  #   <header>
  #   <h1><a href='http://localhost:4567'>HI</h1>
  #    <ul>
  #       <li><a href='http://localhost:4567/about'>About Me</a></li>
  #       <li><a href='http://localhost:4567'>Home</a></li>
  #       <li><a href='http://localhost:4567/contact'>Contact</a></li>
  #       </ul>
  #           <ol>Top three albums
  #           <li> Highway 61 Revisited </li>
  #           <li> Paul Simon </li>
  #           <li> Slave Ambient </li>
  #           </ol>
  #     </header>
  # </body>
  # ALBUMS
end
