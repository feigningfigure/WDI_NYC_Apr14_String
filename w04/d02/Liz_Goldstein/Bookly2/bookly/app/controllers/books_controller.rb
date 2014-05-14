class BooksController < ApplicationController


  def create
    @book = Book.new
    Book.create(book_attributes)

    # render json: Book.create(book_attributes)
    redirect_to "/authors/#{book_attributes[:author_id]}"
  end

  def edit
    @book = Book.find(params[:id])
    @author = @book.author.id
    # render json: @book
    # # render partial: "cookbookform", locals: { cookbook_local: @cookbook }
    # # render "/authors/#{@author.id}/edit"
    # binding.pry
    # render "edit"
  end

 def update
    book = Book.find(params[:id])
    book.update_attributes(book_attributes)
    id = book.author_id
    # render json: book
    redirect_to "/authors/#{id}"
  end

private
  def book_attributes
    params.require(:book).permit(:title, :author_id, :book_id)
  end

end
