class Client

  attr_accessor :name, :balance

  def initialize
    @name = name
    @balance = balance
  end

  def to_s
    "Welcome to Union Square ATM, #{@name}. Your balance is $#{@balance}."
  end

  end
