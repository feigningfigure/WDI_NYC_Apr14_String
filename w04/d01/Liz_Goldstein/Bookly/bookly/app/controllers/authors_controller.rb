class AuthorsController < ApplicationController

  def index
    @authors = Author.order(:last_name)
    @atuhor = Author.new
  end

  def show
    @author = Author.find(params[:id])
    @book = Book.new
  end


def create
    Author.create(author_attributes)
    # render json: {
    #   strong_params: author_attributes
    # }
    redirect_to authors_path
end

def edit
    @author = Author.find(params[:id])
    # render json: @author
    # # render partial: "cookbookform", locals: { cookbook_local: @cookbook }
    # # render "/authors/#{@author.id}/edit"
    # binding.pry
    render "edit"
  end


########################
 private
  # strong params
  def author_attributes
    # whitelisting parts of the params hash, that are DB-safe
    params.require(:author).permit(:first_name, :last_name, :birth, :death)
  end

end
