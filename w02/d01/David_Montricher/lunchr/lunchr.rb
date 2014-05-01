require 'sinatra'

get '/' do
  File.read('lunchr.html')
end
# randomize array value of lunch suggestions
array_lunch = ["Ceasar's salad", "Mexican burrito", "Indian Chicken Tikka", "Chicken Sandwich", "Thai Curry", "Empanadas", "Noodle Soup", "Sauteed vegetables", "Pizza", "Pasta"]
item = array_lunch[rand(array_lunch.length)]
# prints randomly selected array value to html document?
puts item
