
puts "Please enter the info into the register:"


puts "Name of company:"
@company = gets.chomp


puts "Services rendered:"
@service = gets.chomp



puts "Please enter price:"
@price = gets.chomp


print "Company: {@company} (/n)
Service Provided: #{@service} (/n)
Price: #{@price}(/n)
--------------------------(/n)
THANK YOU FOR YOUR PATRONAGE"

