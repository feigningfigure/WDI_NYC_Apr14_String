

def app

  puts "What is the company name?"
  name = gets.chomp
  puts "What service is being provided?"
  service = gets.chomp
  puts "What is the cost?"
  cost = gets.chomp.to_s

  puts "- Company Name: #{name}"
  puts "- Good/Service provided: #{service}"
  puts "- Cost: #{cost}"
  puts "- Thank you for your patronage"
end
app
