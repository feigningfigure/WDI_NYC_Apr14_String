    puts "What's the company called?"
    @company = gets.chomp
    puts "What was the service provided?"
    @service_name = gets.chomp
    puts "How much did it cost?"
    @service_cost = gets.chomp.to_s


    puts "Company Name: #{@company}"
    puts "Good/Service Provided: #{@service_name}"
    puts "Cost: #{@service_cost}"
    puts "Thank you for your patronage"

# "Company Name: Particular Assembly Inc. Good/Service prodided: #{service_name}, Cost: #{service_cost}"
