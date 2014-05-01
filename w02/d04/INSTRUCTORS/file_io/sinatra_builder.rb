project_dir = Dir.mkdir("my_sinatra_project")
views_dir = Dir.mkdir("./my_sinatra_project/views")
public_dir = Dir.mkdir("./my_sinatra_project/public")

app_rb = File.open("./my_sinatra_project/app.rb","w")
app_rb.puts <<-APPFILE
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  "Hello World!"
end
APPFILE
app_rb.close
