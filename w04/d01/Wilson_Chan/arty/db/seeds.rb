# delete database each time
Gallery.delete_all
Artist.delete_all

100.times do

  gallery = Gallery.new({
    name: Faker::Name.name
    address: Faker::Address.street_name
    })

  # empty array of artists
  artists = []

  # make 10 random artists
  10.times do
    #add each of those 10 artists to the array of artists
    artists << Artist.create({
      name: Faker::Name.name
      description: Faker::Lorem.paragraphs(2).to_s
    })
  end

  # add each artists from the array to my cookbook
  artists.each do |recipe|
    # use .artists to attach artists
    gallery.artists << artist
  end

  # save the newly created cookbook
  cookbook.save!

end
