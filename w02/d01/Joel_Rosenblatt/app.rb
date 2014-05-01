require_relative "atm"
require_relative "client"
require_relative "accounts"

puts "Please enter your name."
client_name = gets.chomp.downcase
$clients[client_name]
puts "Welcome #{client_name}. Would you like to:"
puts "A: Withdraw"
puts "B: Deposit"
choice = gets.chomp.downcase
case choice
when choice = "a"
  puts "How much would you like to withdraw?"
  withdrawal = gets.chomp
  new_balance = Client.balance + deposit
  Atm.balance =
  puts "Your new balance is #{new_balance}"

when choice = "b"
  puts "How much would you like to deposit?"
  deposit = gets.chomp
  new_balance = Client.balance + deposit
  puts "Your new balance is #{new_balance}"

end
