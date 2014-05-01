require 'sinatra'
require 'sinatra/reloader'


get "/" do
  <<-HTML
  <head>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
  </head>
  <h1 style ="font-family: 'Open Sans', 'sans-serif'; color: blue">Hi I'm Chris Lee</h1>
  <h2 style ="font-family: 'Open Sans', 'sans-serif'; color: blue">I'm from Seattle, Washington</h2>
  <h2 style ="font-family: 'Open Sans', 'sans-serif'; color: blue">I'm currently enrolled at GA doing the WDI program</h2>
  HTML
end


get "/contact" do
<<-HTML
  <head>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
  </head>
  <h1 style ="font-family: 'Open Sans', 'sans-serif'; color: blue">Holler at Me!</h1>
  <h2 style ="font-family: 'Open Sans', 'sans-serif'; color: blue">Phone: 206 755 4332</h2>
  <h2 style ="font-family: 'Open Sans', 'sans-serif'; color: blue">Email: lee.christophermark@gmail.com</h2>
  HTML
end


get '/albums' do
  <<-HTML
  <head>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
  </head>
  <h1 style ="font-family: 'Open Sans', 'sans-serif'; color: blue">Fave Albums</h1>
  <ol>
    <li style ="font-family: 'Open Sans', 'sans-serif'; color: blue">Nas - Illmatic</li>
    <li style ="font-family: 'Open Sans', 'sans-serif'; color: blue">Wild Nothing - Gemini</li>
    <li style ="font-family: 'Open Sans', 'sans-serif'; color: blue">Wu-Tang - Forever</li>
  </ol>
  HTML
end
