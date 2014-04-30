require 'sinatra'

arr_lunch = ["pork lo mein", "sushi", "banh mi sandwich", "salad", "burger", "buffalo chicken sandwich", "chicken salad on rye", "chick masala", "veal parmigiana", "fettucine alfredo"
        ]

get '/' do
  "<a href='http://localhost:4567/lunch'>Help me pick a lunch!</a>"
end

get '/lunch' do
  shuffled_array = arr_lunch.shuffle
  return shuffled_array[0]
end
