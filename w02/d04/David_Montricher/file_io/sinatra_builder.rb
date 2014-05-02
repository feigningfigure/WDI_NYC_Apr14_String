project_dir = Dir.mkdir("my_sinatra_project")
views_dir = Dir.mkdir("./my_sinatra_project/views")
public_dir = Dir.mkdir("./my_sinatra_project/public")

# CSS

style_css = File.open("./my_sinatra_project/public/styles.css", "w")

# ERB
layout_erb = File.open("./my_sinatra_project/views/layout.erb", "w")
layout_erb.puts <<-HTML
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="description" content="">
  <meta name="keywords" content="">
  <link rel="stylesheet" href="styles.css">
  <title>Untitled</title>
</head>
<body>

  <%= yield %>

</body>
</html>
HTML

index_erb = File.open("./my_sinatra_project/views/index.erb", "w")

app_rb = File.open("./my_sinatra_project/app.rb","w")
app_rb.puts <<-APPFILE
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  "Hello World!"
end
APPFILE
app_rb.close
