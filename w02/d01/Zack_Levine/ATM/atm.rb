class Atm
  atr_accessor :balance, :amount

  def initialize(balance)
    @balance = balance.to_f
    @amount = 0
  end

  def deposit(amount)
    @amount = amount.to_f
    @balance = $client.balance #global variable + @amount  #put the amoutn to f and put it on an instance variable
  end

  def withdraw(amount)
    @amount = amount.to_f
    @balance = $client.balance - @amount
  end

  def to_s
    puts {client.name}'s new bal is: $#{$client.balance}
