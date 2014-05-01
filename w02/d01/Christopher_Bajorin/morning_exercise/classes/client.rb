class Client
  attr_accessor :name, :balance

  def initialize(name, start_balance)
    @name = name
    @balance = start_balance
  end

  def to_s
    "Welcome #{@name}, your balance is #{@balance}"
  end

end
