class Client

  attr_accessor :name, :balance

  def initialize(name)
    @name = name
    @balance = balance

  end



  def to_s
    "#{@name} has #{@balace} dollars"
  end
end
