class Atm

  attr_accessor :balance, :amount


  def initialize(balance)
    @balance = balance.to_f
    @amount = 0


  end

  def deposit(amount)
    @amount = amount.to_f
    @balance = $client.balance + @amount
    # client_name.balance = amount
    # self.to_s(client_name

  end

  def withdraw(amount)
    @amount = amount.to_f
    @balance = $client.balance - @amount

  end


  def to_s
    "#{client.name}'s balance is $#{$client.balance}"
  end
