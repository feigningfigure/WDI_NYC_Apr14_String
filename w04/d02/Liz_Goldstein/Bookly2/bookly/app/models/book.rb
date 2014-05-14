class Book < ActiveRecord::Base
  belongs_to :author
  has_many :genres, through: :genrecatalogs
  has_many :genrecatalogs

def add_catalog
  ratings = [1, 2, 3, 4, 5]
  rating = ratings.sample
  genre = Genre.all.sample
  book = Book.all.sample


  Genrecatalog.create({
        rating: rating,
        genre: genre,
        book: book
        })
end
end
