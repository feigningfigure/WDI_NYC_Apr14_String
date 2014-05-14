Author.delete_all
Book.delete_all
Genre.delete_all
Genrecatalog.delete_all

genres = [
'Adventure',
'Comedy',
'Crime',
'Erotica',
'Faction',
'Fantasy',
'Historical',
'Horror',
'Mystery',
'Paranoid',
'Philosophical',
'Political',
'Realistic',
'Romance',
'Saga',
'Satire',
'Science fiction',
'Slice of life',
'Speculative',
'Thriller',
'Urban']

genres.each do |genre_name|
  Genre.create({
    genre: genre_name
    })
end


100.times do
  author = Author.new({
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    birth: rand(1910..1990),
    death: rand(1940..2013)
    })


    books = []
    10.times do
    book = Book.create({
      title: Faker::Lorem.sentence(3).to_s
      })

    #     random_genres = Genre.all
    # 2.times do
    #   valid_genre_name = random_genres.to_a.pop.genre
    #   using a custom Model Method called .add_portion
      # book.add_catalog
      # (
      #   ratings.sample,
      #   valid_genre_name
      #   )
    book.add_catalog
    book.save
    books << book
end

    books.each do |book|
    author.books << book
  end

  author.save!
end


