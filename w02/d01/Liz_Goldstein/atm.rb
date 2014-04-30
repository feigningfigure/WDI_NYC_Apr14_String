class Atm

attr_accessor :balance

def initialize(balance)
  @balance = balance.to_f
end

def withdraw(client)
  puts "Hi #{client.name} your balance is #{client.balance} "
  puts "How much would you like to withdraw?"
  money = gets.chomp.to_f
  newbalance = (client.balance + money)
  client.balance = newbalance
  p "Your new balance is #{newbalance}."
end

def deposit(client)
  puts "Hi #{client.name} your balance is #{client.balance} "
  puts "How much would you like to deposit?"
  money = gets.chomp.to_f
  newbalance = (client.balance - money)

  p "Your new balance is #{newbalance}."
end

def to_s
  p "This ATM is holding #{balance} dollars."
end

end

# test = Atm.new(50)
# test.to_s

