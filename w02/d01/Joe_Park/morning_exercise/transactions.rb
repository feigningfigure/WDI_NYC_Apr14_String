require_relative 'client.rb'
require_relative 'atm.rb'
require_relative 'accounts.rb'

def transaction
  puts "\nChoose your transaction:"
  puts ""
  puts "A: Deposit"
  puts "B: Withdrawal"
  puts "Q: Quit"

  command = gets.chomp.upcase

  case command
  when "A"
    puts "\nEnter deposit amount:"
    amount = gets.chomp
    $client.balance = $atm.deposit (amount)
    $atm.to_s
  when "B"
    puts "\nEnter withdrawal amount:"
    amount = gets.chomp
    $client.balance = $atm.withdrawal (amount)
    $atm.to_s
  when "Q"
    Kernel.exit
  end
end

puts "Welcome to GA Bank \n"
puts "Please enter your name:"
name = gets.chomp.capitalize
$client = $client[name]
$client.to_s
$atm = Atm.new ($client.balance)

response = transaction

while response != "Q"
  response = transaction
end
