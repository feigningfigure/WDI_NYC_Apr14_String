#pull request 'hw_w02_submission'

require 'sinatra'

get '/name/:name/' do
  "Hello #{params[:name]}!"
end


get '/' do
  "<a href='http://wwww.google.com'>
end

# multi-line string in ruby --> heredoc-and-indent
get '/' do
  <<-HTML
  <a href='http://wwww.google.com'> Google <\a ref>
  <a href='http://wwww.google.com'> Bing <\a ref>
  HTML
end
