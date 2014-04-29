class Mailbox
  attr_accessor :postcards
  def initialize
    @postcards = []
  end

  def accept_postcard(card)
    @postcards << card
  end

  def to_s
    "The mailbox has #{@postcards.length} cards"
  end

end
