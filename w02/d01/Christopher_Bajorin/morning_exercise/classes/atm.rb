class Atm

  attr_accessor :balance

  def initialize(balance)
    @balance = balance
  end

  def withdraw(withdrawal)
    @balance -= withdrawal
  end

  def deposit(deposit)
    @balance += deposit
  end

  def to_s
    "Your new balance is #{@balance}"
  end

end
