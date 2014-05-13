100.times do

  author = Author.new({
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    birth: rand(1910..1990),
    death: rand(1940..2013)
    })


    books = []
    10.times do
    books << Book.create({
      title: Faker::Lorem.sentence(3).to_s
      })
    end


  books.each do |book|
    author.books << book
  end

  author.save!
end
