class GalleriesController < ApplicationController

      #the action that maps to index.html.erb in the views folder
  def index
    @galleries = Gallery.order(id: :desc)

    # new instance of gallery for the form helper
    @gallery = Gallery.new
    # render json: @galleries
  end

def show
    # by default...
    # render :name_of_this_method

    # define @gallery
    @gallery = Gallery.find(params[:id])

    # makes the form work
    @artist = Artist.new

    # binding.pry
  end

  def create
    # add .create soon..

    # old way...
    # gallery_attributes = params[:gallery]

    # new way... *but requires private_method
    Gallery.create(gallery_attributes)

    # render json: {
    #   strong_params: gallery_attributes
    # }

    # when done...
    redirect_to galleries_path
  end

  private

  # strong params
  def gallery_attributes
    # whitelisting parts of the params hash, that are DB-safe
    params.require(:gallery).permit(:name, :address)
  end

end
