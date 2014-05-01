class Client

  attr_accessor :name, :balance
  def initialize(name, balance)
    @name = name
    @balance = balance.to_f
  end

  def to_s
    "Welcome #{name}. Your balance is #{@balance}"
  end

  #   def add_dollars(number_of_desired_dollars)
  #   number_of_desired_dollars.times do
  #     @dollars << Dollar.new
  #   end
  #   puts "You have #{@dollars.length} dollars!"
  #   # should return something!!!
  # end

end
