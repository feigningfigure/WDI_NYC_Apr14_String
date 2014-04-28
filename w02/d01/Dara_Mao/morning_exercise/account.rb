require_relative 'helper'

def menu(atm)
  puts "Please enter you name."
  user_name = gets.chomp
  puts "Welcome #{user_name}, your current balance is #{balance}."

  puts "Would you like to (d)eposit money or (w)ithdrawl money?"
  user_input = gets.chomp.upcase

  case user_input
  when "D"
    puts "How much would you like to deposit?."
    deposit_amount = user_input.to_i
    added_amount = "You have deposited #{atm.make_deposit} to your account with a remaining balance of #{client.balance}."
    puts added_amount
  when "W"
    puts "How much would you like to withdrawal?"
    withdrawl_amount =user_input.to_i
    deducted_amount = "You have withdrew #{atm.withdrawal} to your account with a remaining balance of #{client.balance} "
    puts deposit_amount
  end

end
