class Atm

  attr_accessor  :balance, :amount

  def initialize(balance)
    @balance = balance.to_f
    @amount = 0
  end

  def deposit(amount)
    @amount = amount.to_f #deposit and put it into amount
    @balance =  $client.balance + @amount

    # client_name.balance -=amount
    # self.to_s(client_name)
  end

  def withdraw(amount)
    @amount = amount.to_f
    @balance =  $client.balance - @amount
    # @withdrawal_balance[name] = balance.length - withdrawl_amount
 end

 def to_s
  puts "#{$client.name}'s new balance is: $#{$client.balance}"

end
