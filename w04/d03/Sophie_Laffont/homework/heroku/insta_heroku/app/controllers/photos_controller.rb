class PhotosController < ActionController::Base

  def index

    @photos = [Photo.get_photo]
  end

 def all
    @photos = Photo.all

  end

end
