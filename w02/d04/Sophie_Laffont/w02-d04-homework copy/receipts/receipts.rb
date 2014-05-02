
class Receipt
	attr_accessor :companyName, :service, :cost

	def initialize(companyName,service,cost)
		@companyName = companyName
		@service =service
		@cost = cost
	end

	def  save_receipt
		receipt_file = File.open("receipt.txt","w")
		receipt_file.write "Company Name: #{@companyName}\n Service Provided: #{@service}\n Cost: #{@cost}\nThank you for your patronage." 
	end	
end

puts "What is the company name for the service provided?"
companyName = gets.chomp!

puts "What is was the service provided?"
service = gets.chomp!

puts "What was the cost of the service provided?"
cost = gets.chomp!

myReceipt = Receipt.new(companyName, service, cost)

myReceipt.save_receipt









