require 'sinatra'
require 'sinatra/reloader'

get '/' do
	erb :index
end

get '/receipt' do
	name = params[:name]
	cost = params[:cost]
	@receipt = "Company Name: Particular Assembly Inc.\nGood/Service Provided: #{name}\nCost: $#{cost}\nThank you for the your patronage\n"
	erb :receipt
end



# class Receipt
# 	attr_accessor :name, :cost

# 	def initialize(name, cost)
# 		@name = name
# 		@cost = cost.to_i
# 		@receipt = {}

# 	end

# 	def compile_receipt(name, cost)
# 		@receipt["#{@name}"] = @cost
# 	end

# 	def to_s
# 		"Company Name: Particular Assembly Inc.\nGood/Service Provided: #{@name}\nCost: $#{@cost}\nThank you for the your patronage\n"
# 	end
# end

# puts "Welcome to Particular Assembly Inc."
# puts "What is the name of the good or service provided?"
# 	name = gets.chomp
# puts "How much did this cost?"
# 	cost = gets.chomp
# # puts "#{@receipt.to_s}"
# paper = Receipt.new(name, cost)
# puts paper.to_s

