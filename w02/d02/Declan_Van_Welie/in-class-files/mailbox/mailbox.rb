require_relative 'postcard'

class Mailbox


  def accept_postcard
    postcard_objects= []
    postcard_objects[] << $postcard

  end

  def to_s

"The mailbox has #{postcard_objects.length} postcards."
