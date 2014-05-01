require_relative 'atm'
require_relative 'client'


# dummy entries

$client = {}

$client["Helena"] = Client.new("Helena Wells", "5.00")
$client["Thomas"] = Client.new("Thomas Jefferson", "25.00")
$client["Cotton"] = Client.new("Cotton Mather", "15.00")
$client["Mercy"] = Client.new("Mercy Harbison", "10.00")
$client["James"] = Client.new("James Ralph", "20.00")

puts "What is your full name?"
	name = gets.chomp.capitalize
name.to_s
