require 'sinatra'
require 'sinatra/reloader'

get '/' do
  # Some kind of index or landing page
  <<-HTML
  <!doctype html>
  <link rel="stylesheet" type="text/css" href="/style.css">
    <html>
      <body>
        <h1>Do you have a test for that?</h1>
          <a class= "yes" href = 'http://localhost:4567/test_pass'>YES<a>
          <a class="no" href = 'http://localhost:4567/write_test'>NO</a>
      </body>
    </html>
  HTML
end

get '/test_pass' do
  # Some kind of index or landing page
  <<-HTML
  <h1>Does the test pass?</h1>
  <a href = 'http://localhost:4567/refactor'>YES</a>
  <a href = 'http://localhost:4567/write_code'>No</a>
  HTML
end

get '/write_test' do
  # Some kind of index or landing page
  <<-HTML
  <h1>Write a test.</h1>
  <a href = 'http://localhost:4567'>DONE</a>
  HTML
end

get '/refactor' do
  # Some kind of index or landing page
  <<-HTML
  <h1>Need to refactor?</h1>
  <a href = 'http://localhost:4567/do_refactor'>YES</a>
  <a href = 'http://localhost:4567/new_feature'>NO</a>
  HTML
end

get '/write_code' do
  # Some kind of index or landing page
  <<-HTML
  <h1>Write just enough code for the test to pass.</h1>
  <a href = 'http://localhost:4567/test_pass'>DONE</a>
  HTML
end

get '/do_refactor' do
  # Some kind of index or landing page
  <<-HTML
  <h1>Refactor the code.</h1>
  <a href = 'http://localhost:4567/test_pass'>DONE</a>
  HTML
end

get '/new_feature' do
  # Some kind of index or landing page
  <<-HTML
  <h1>Select a new feature to implement.</h1>
  <a href = 'http://localhost:4567'>DONE</a>
  HTML
end
