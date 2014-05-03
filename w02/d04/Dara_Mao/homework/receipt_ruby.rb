puts "What kind of good or service did you receive?"
name_service = gets.chomp.capitalize
puts "How much did it cost?"
cost_service = gets.chomp.to_i

time = Time.new
current_time = time.inspect

puts <<PRINT_RECEIPT
On #{current_time}
#{name_service} costs $#{cost_service}
PRINT_RECEIPT
