class Client

  attr_accessor :name, :balance

  def initialize(name, balance)
    @name = name
    @balance = []
  end

  def to_s
    "Welcome #{@name}. Your balance is $ #{@balance}"
  end
