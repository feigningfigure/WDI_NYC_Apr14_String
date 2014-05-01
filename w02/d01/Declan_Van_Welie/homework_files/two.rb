require 'sinatra'
require 'sinatra/reloader'

 get '/:activity/:name1/:name2' do
  "<h1>#{params[:name1]} and #{params[:name2]} are having a lovely #{params[:activity]} ceremony"
end


# def random_select(:name1, :name2)
#   array = [:name1, :name2] do
#   array[rand(array.length)
#   end
#   result
# end





# def random_select(array, n)
#   result = []
#   n.times do
#     result << array[rand(array.length)]
#   end
#   result
# end
