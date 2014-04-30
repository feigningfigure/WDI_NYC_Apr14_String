# dummy entries

require_relative 'classes/client'
require_relative 'classes/atm'

$client = {}

$client["Helena"] = Client.new("Helena Wells", "5.00")
$client["Thomas"] = Client.new("Thomas Jefferson", "25.00")
$client["Cotton"] = Client.new("Cotton Mather", "15.00")
$client["Mercy"] = Client.new("Mercy Harbison", "10.00")
$client["James"] = Client.new("James Ralph", "20.00")



#TO DO: USER INPUT/TRANSACTIONS
puts "What is your name?"
@name = gets.chomp.downcase
puts "Hi #{@name.upcase}, your current balance is: #{balance}."
puts "What would you like to do today? (D)eposit, (W)ithdrawal, (V)iew balance, or (Q)uit?"
transaction = gets.chomp
if "D"

if "W"

if "V"
  puts "#{@name.upcase}, your current balance is: #{balance}."
  puts "What would you like to do today? (D)eposit, (W)ithdrawal, (V)iew balance, or (Q)uit?"
if "Q"
  puts "Thank you and goodbye!"
end
