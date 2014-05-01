class Client
  attr_accessor :name, :balance

  def initialize(name, balance) #always init your attr_accessorz
    @name = name
    @balance = balance
  end

  def name()
    #soemthign
  end

  def dollar_bal()
    #some
  end

  def greetz()
    puts "welcome to pwnage bank your balance iz" + dollar_bal + "have a ncie day"
  end
end

