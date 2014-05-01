require_relative 'atm'
require_relative 'client'

@ben = Client.new("Ben", "1")
@atm = Atm.new("")



puts "A: Check Balance"
puts "B: Withdraw"
puts "C: Deposit"
puts "D: Quit"
user_choice = gets.chomp

case atm_commands
	when "A"
		puts $client.to_s


	when "B"
		puts "How much would you like to withdraw?"
		amount = gets.chomp
		$atm.withdraw


	when "C"
		puts "How much would you like to desposit?"
		amount = gets.chomp
		$atm.deposit


	when "D"
		Kernel.exit
	
		
end