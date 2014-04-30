require 'sinatra'


get "/" do
" 'Do you have a test for that?'
<a href='http://localhost:4567/pass'>YES</a>
<a href='http://localhost:4567/write_test'>NO</a>
"
end

get "/pass" do
" 'Does the test pass?'
<a href='http://localhost:4567/refactor'>YES</a>
<a href='http://localhost:4567/write_code'>NO</a>
"
end

get "/refactor" do
 " 'Do you need to refactor?'
<a href='http://localhost:4567/do_refactor'>YES</a>
<a href='http://localhost:4567/new_feature'>NO</a>
"
end

get "/do_refactor" do
  " 'Refactor the code'
  <a href='http://localhost:4567/'>DONE</a>
  "
end

get "/write_code" do
" 'Write just enough code for the test to pass'
  <a href='http://localhost:4567/'>DONE</a>
"
end

get "/new_feature" do
  " 'Select a new feature to implement'
  <a href='http://localhost:4567/'>DONE</a>
  "
end

get "/write_test" do
  " 'Write a test'
  <a href='http://localhost:4567/pass'>DONE</a>
  "
end
