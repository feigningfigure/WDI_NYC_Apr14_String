class Client
  attr_accessor :name, :balance

  def initialize (name, balance)
    @name = name
    @balance = balance
  end

  def to_s
    "Welcome #{name}, your balance is #{balance}"
  end
end
