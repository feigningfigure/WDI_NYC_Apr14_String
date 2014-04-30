class Postcard

  attr_accessor :ship_to_address, :message

  def initialize(message, ship_to_address)
    @message = message
    @ship_to_address = ship_to_address
  end

  def ship_to_address
    # "41 Union Square W, New York, NY"
  end

  def message
    # "Hello World!"
  end

  def to_s
    puts "The message #{@message} is being sent to  #{@ship_to_address} "
  end
end
