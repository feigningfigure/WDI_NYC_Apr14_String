
# make sure sinatra installed --> gem install sinatra

require 'sinatra'

get '/' do
  "<a href='localhost/var/folders/t_/m8ytc0x17hggf9l7stx5_z080000gn/T/wzQL.985C2c/Nelson%20Schubart%20-%20GA%20WDI%20Application%20Website/About.html'>About Me</a>"
end

get '/contact' do
  "<a href='file:///Users/aliciahaynes/Desktop/GA%20WDI/GA%20WDI%20Application%20/Contact.html'>Contact Information</a>"
end

get '/albums' do
  "<a href='file:///Users/aliciahaynes/Desktop/GA%20WDI/GA%20WDI%20Application%20/Recommended%20Reads.html'>Albums</a>"
end

