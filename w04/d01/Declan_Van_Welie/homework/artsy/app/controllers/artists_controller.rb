class ArtistsController < ApplicationController

def index
  @artists = Artist.all

  @artist = Artist.new
end

def show

  @artist = Artist.find(params[:id])

  @work = Work.new

end

  def create

    Artist.create(artist_attributes)

    render json: {
      strong_params: artist_attributes
    }

    redirect_to artists_path
  end

  def edit
    @artist = Artist.find(params[:id])

    render partial: "artistform", locals: { artist_local: @artist }
  end

   def update

    artist = Artist.find(params[:id])

    artist.update_attributes(artist_attributes)


    redirect_to "/artists/#{params[:id]}"
  end

  private


  def artist_attributes

    params.require(:artist).permit(:name, :birth_year, :movement, :nationality)
  end


end
