# your MODELS inherit from ActiveRecord::Base class
class Item < ActiveRecord::Base

  def author_photo
    Facebook.get_photo(self.author)
  end

end
