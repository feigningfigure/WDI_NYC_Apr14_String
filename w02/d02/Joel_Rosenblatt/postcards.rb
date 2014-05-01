class Postcard
  attr_accessor :ship_to_address, :message
  def initialize(ship_to_address, message)
    @ship_to_address = ship_to_address
    @message = message
  end

  def to_s
    "'#{@message}' is being sent to #{ship_to_address}"
  end

end

class Mailbox
  def initialize
    @postcards = []
  end

  def accept_postcard(card)
    @postcards << card
  end

  def to_s
    "The mailbox has #{@postcards.length} postcards"
  end

end
