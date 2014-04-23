#require_relative calc2.rb

menu = [ "add" , "subtract" , "multiply" ,  "divide" , "power" , "square", "stop" ]


print "Hello, I am a calculator:
You can select functions from the following menu #{menu}.
But first enter a number here:"

user_num=gets.chomp.to_i

print "Okay, #{user_num} is a good number, enter another number:"

user_num_2=gets.chomp.to_i

  puts "great, select a function"
function=gets.chomp

begin

if function == "add"
  add = user_num+user_num_2
  puts add

elsif function =="subtract"
  subtract = user_num-user_num_2
  puts subtract

elsif function == "multiply"
  multiply = user_num*user_num_2
  puts multiply

elsif function == "divide"
  divide = user_num/user_num_2
  puts divide

elsif function == "power"
  power = user_num**user_num_2
  puts power

elsif function == "square"
  square = sqrt(user_num)
  puts square


function == "off"

end










