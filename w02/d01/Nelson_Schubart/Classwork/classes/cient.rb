
class client

  attr_accessor :name, :balance

  # if we wanted new accounts, we would want paramaters
  def initialize(name, balance)
    @name = name
    @balance = balance
  end

  def to_s
    puts "Welcome #{@name}.  Your balance is $#{@balance}"
  end
end

