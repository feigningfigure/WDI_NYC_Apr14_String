# dummy entries
require_relative 'client.rb'
require_relative 'atm.rb'

def menu
  puts "Welcome #{client}, your balance is #{balance}"
  puts "Please choose a transaction: "
  puts "A: Deposit money"
  puts "B: Withdraw money"
  puts "Q: Quit"

  command = gets.chomp.upcase

  case command
    when "A"

    when "B"

    when "Q"
      Kernel.exit
  end

$client = {}

$client["Helena"] = Client.new("Helena Wells", "5.00")
$client["Thomas"] = Client.new("Thomas Jefferson", "25.00")
$client["Cotton"] = Client.new("Cotton Mather", "15.00")
$client["Mercy"] = Client.new("Mercy Harbison", "10.00")
$client["James"] = Client.new("James Ralph", "20.00")
