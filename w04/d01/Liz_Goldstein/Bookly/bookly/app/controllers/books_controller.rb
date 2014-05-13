class BooksController < ApplicationController


def create

    Book.create(book_attributes)

    # render json: Book.create(book_attributes)
    render "/authors/#{book_attributes[:author_id]}"
  end


private
def book_attributes
  params.require(:book).permit(:title, :author_id)
end

end
