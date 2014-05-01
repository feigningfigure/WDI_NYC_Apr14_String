require_relative 'helper'

$client = {}

$client["Helena"] = Client.new("Helena Wells", "5.00")
$client["Thomas"] = Client.new("Thomas Jefferson", "25.00")
$client["Cotton"] = Client.new("Cotton Mather", "15.00")
$client["Mercy"] = Client.new("Mercy Harbison", "10.00")
$client["James"] = Client.new("James Ralph", "20.00")

atm1 = Atm.new

puts atm1.balance

atm1.log_in_client($client["Helena"])

atm1.withdraw(4)

atm1.log_in_client($client["Cotton"])

atm1.deposit(5)

puts atm1.balance
