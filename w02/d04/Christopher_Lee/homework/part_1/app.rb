require 'pry'

puts "Thank you for shopping at Consolidated Industries"
puts "What was good or service was provided?"
service = gets.chomp
puts "How much did it cost?"
cost = gets.chomp


# receipt_db = File.open("../db/receipt.txt")

receipt = File.open("./db/receipt.txt", "a"){
  |file| file.write("Company Name: Consolidated Industries
Good/Service Provided: #{service}
Cost: #{cost}
Thank you for your patronage\n")
}
# receipt.txt.puts <<-RECEIPT
# Company Name: Consolidated Industries
# Good/Service Provided: #{service}
# Cost/: #{cost}
# Thank you for your patronage
# RECEIPT

# "Company Name: Consolidated Industries
# Good/Service Provided: #{service}
# Cost/: #{cost}
# Thank you for your patronage"

def print_receipt
  receipt = File.open("./db/receipt.txt", "r")
  receipt_array = receipt.readlines
  puts receipt_array.last(4)
  receipt.close
end

print_receipt
