class Client

  attr_accessor :name, :balance

  def initialize(name, balance)
    @name = name
    @balance = balance.to_f
  end

  def to_s
    p "Welcome #{@name}, you have #{balance} dollars."
end
end


# test = Client.new("Lizzy", 50)
# test.to_s
