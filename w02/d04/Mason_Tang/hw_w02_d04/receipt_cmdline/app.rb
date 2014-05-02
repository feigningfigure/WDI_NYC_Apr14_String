require_relative 'classes/company'
require_relative 'classes/receipt'


puts "Enter Company Name"
company = gets.chomp
puts "Enter goods or service"
service = gets.chomp
puts "Enter cost"
cost = gets.chomp


@company = Company.new(company)
@receipts = Receipts.new(service, cost)



puts @company.to_s

