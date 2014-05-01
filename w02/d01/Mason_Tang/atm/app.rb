require_relative 'classes/atm'
require_relative 'classes/client'

@machine = Atm.new

def menu
  puts "What would you like to do?"
  puts "A: Check balance"
  puts "B: Withdraw"
  puts "C: Deposit"
  puts "Q: Quit"

  command = gets.chomp.upcase


  case command

  when "A"
    puts @machine.display_balance
  when "B"
    puts "Enter client:"
    owner = gets.chomp
    if @machine.clients.include?(owner)
        puts "How much would you like to withdraw"
        w_amount = gets.chomp

    @machine.clients[owner].withdraw(w_amount, owner)
    @machine.deposit(w_amount)

  when "C"
    puts "Enter client:"
    current_owner = gets.chomp

    if @machine.clients.include?(current_owner)
      puts "Enter deposit amount"
      dep_amount = gets.chomp

      @machine.deposit()


  when "Q"
    Kernel.exit
  end
end

response = menu
while response != "Q"
  response = menu
end

menu
