class Atm
  attr_accessor balance

  def initialize (balance)
    @balance = balance.to_f
  end

  def deposit (amount)
    @amout = amount.to_f
    @balance += amount + $client.balance
    client_name.balance += amount
    self.to_s(client_name)
  end

  def withdraw (client_name, amount)
    @balance += amount
    client_name.balance += amount
    self.to_s(client_name)
  end

  def to_s
    puts "#{client_name.name}, your new balance is #{balance}"
  end
end
