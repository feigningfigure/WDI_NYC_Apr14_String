class Client
  attr_accessor :name, :balance
  def initialize(name=nil, balance=0)
    @name = name
    @balance = balance

  end

  def to_s
    "Welcome #{@name}. Your balance is $#{@balance}."
  end

end
