class Atm
  attr_reader :balance, :amount
  def initialize(client)
    @balance = balance.to_f

  end

  def deposit(amount)
    @amount << amount.to_f
    @balance = $client.balance + amount
    self.to_s(client_name)

  end

  def withdraw(amount)
    @amount << amount.to_f
    @balance = $client.balance - amount
  end

  def to_s
    "#{$client.name}, your new balance is: $#{$client.balance}"
  end

end
