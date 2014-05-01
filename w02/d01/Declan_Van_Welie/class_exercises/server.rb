require 'sinatra'
require 'httparty'


#HTTP VERB + URI pattern + Block of code
get ("/" {"Hello World!"}) # / is the most root-level path in unix and http
#An anonymous function is a bloc in Ruby
#procs & lambdas are similar. It's a piece of code you're sending to another piece of code
get "/" do
  "Hello World!"
end #This is syntactic sugar for the above.
#This is teaching sinatra to interpret any incoming code with the method.
