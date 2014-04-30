class Postcard

  attr_accessor :message, :address


  def initialize(message, address)
    @message = message
    @address = address
  end





  def to_s
    puts "The #{@message} is being sent to #{@address}"

  end



end

mason_postcard = Postcard.new("123 Fake street", "hello world")

puts mason_postcard.to_s
