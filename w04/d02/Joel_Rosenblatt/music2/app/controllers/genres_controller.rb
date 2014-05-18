class GenresController < ApplicationController

  def index
    @genres = Genre.order(id: :desc)

    @genre = Genre.new

  end

  def show

    @genre = Genre.find(params[:id])

    @band = Band.new

  end

  def create

    Genre.create(genre_attributes)

    render json: {
      strong_params: genre_attributes
    }

    redirect_to genres_path
  end

  def edit
    @genre = Genre.find(params[:id])

    render partial: "genreform", locals: { genre_local: @genre }
  end

   def update

    genre = Genre.find(params[:id])

    genre.update_attributes(genre_attributes)

    redirect_to "/genres/#{params[:id]}"
  end

  private

  def genre_attributes
    # whitelisting parts of the params hash, that are DB-safe
    params.require(:genre).permit(:name, :description)
  end

end
