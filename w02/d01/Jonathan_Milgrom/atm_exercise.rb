require_relative 'client_class'
require_relative 'atm_class'

$jonathan = Client.new("Jonathan")
$atm_1 = Atm.new

$atm_1.deposit("jonathan", 100)

puts $jonathan.balance