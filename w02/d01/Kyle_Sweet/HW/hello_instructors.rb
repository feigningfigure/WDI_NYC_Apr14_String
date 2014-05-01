require 'sinatra'


get '/:name/:instructor' do
case params[:instructor]
when "neel"
"Hello Neel!"
when "omar"
"Hello Omar!"
when "keri"
"Hello Keri"
else
"I don't know you, but hello. Sorry you aren't listed"
  end
end

