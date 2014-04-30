class Postcard
  attr_accessor :ship_to_address, :message

  def initialize(ship_to_address, message)
    @ship_to_address = ship_to_address
    @message = message
  end

  def to_s
    "The message #{@message} is being sent to #{@ship_to_address}"
  end

end

class Mailbox
  attr_accessor :postcards

  def initialize
    @postcards = []
  end

  def accept_postcard(card)
    if card.class == Postcard
    @postcards << card
    p "Mailed!"
    else
    p "Thats not mail!"
    end
  end

  def to_s
    if @postcards.length == 1
      "The mailbox has #{@postcards.length} postcard."
    elsif
      @postcards.length == 0
      "No one sends mail anymore."
    else
      "The mailbox has #{@postcards.length} postcards."
    end
  end

end

card1 = Postcard.new("89th & bway", "Hello mom!")
card2 = Postcard.new("3201 Dale Street, San Diego", "Hey kiddo miss you!")
puts card1
mailbox1 = Mailbox.new
mailbox1.accept_postcard(card1)
puts mailbox1
mailbox1.accept_postcard(card2)
puts mailbox1
mailbox1.accept_postcard("Heya!")
