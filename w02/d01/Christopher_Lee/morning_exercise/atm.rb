class Atm
  attr_accessor :balance, :amount
  def initialize(balance)
    @balance = balance.to_f
  end

  def deposit(client_name, amount)
    # $client
    amount = amount.to_f
    $client[client_name.to_s].balance += amount
    @balance + amount
    puts $client[client_name.to_s].to_s
  end

  def withdrawal(client_name, amount)
    amount = amount.to_f
    # this can be $client.name . $client.balance
    $client[client_name.to_s].balance -= amount
    @balance - amount
    puts $client[client_name.to_s].to_s
  end

  def to_s

  end

end
