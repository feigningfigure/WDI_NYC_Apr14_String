00.times  do
  Post.create({
    # J.M. original
    # title: Faker::Name.name,

    # Chris B.
    title: Faker::Lorem.sentence(3),

    body: Faker::Lorem.paragraph(1),
    # Joe's amendment
    author_name: Faker::Name.name
    })
end
