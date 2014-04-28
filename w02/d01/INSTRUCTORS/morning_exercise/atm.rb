class Atm
  attr_accessor :balance, :amount

  def initialize (balance)
    @balance = balance.to_f
    @amount = 0
  end

  def deposit (amount)
    @amount = amount.to_f
    @balance = $client.balance.to_f + @amount
  end

  def withdrawal (amount)
    @amount = amount.to_f
    @balance = $client.balance.to_f - @amount
  end

  def to_s
    puts "Your new balance is: $#{@balance}"
  end

end
