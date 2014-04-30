class Mailbox
  attr_accessor :postcard_array

  def initialize
    @postcard_array = Array.new
  end

  def accept_postcard(postcard)
    @postcard_array << postcard
  end

  def to_s
    "The mailbox has #{@postcard_array.length} postcards"
  end

end
