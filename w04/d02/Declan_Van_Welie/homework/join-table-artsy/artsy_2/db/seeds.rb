Artist.delete_all
Work.delete_all

birthdays = (1400..2014).to_a.shuffle!

100.times do

  artist = Artist.new({
    name: Faker::Name.name.to_s,
    birth_year: birthdays.first,
    movement: Faker::Lorem.word.to_s,
    nationality: Faker::Address.country.to_s
    })

  subject_matter = [
"still life","landscape", "portrait", "nude", "abstract", "self portait", "genre painting", "religious iconography","illustration"
]

    subject.each do |subject_matter|
    Subject.create({
      genre: subject_matter
      })
end

  works = []

images = ['http://4.bp.blogspot.com/-nUAilJKIsJs/UOmO6zEY24I/AAAAAAAAD4Q/pMBWGByL0ls/s1600/1.jpg','http://3.bp.blogspot.com/-l-f3ary70yE/T8iGb1idnSI/AAAAAAAADws/lafMUlNWW-c/s1600/lucian-freud-reflection-self-portrait.jpg','http://nickgarrett.files.wordpress.com/2011/02/22d80-uglowli.jpg']

  3.times do

    works << Work.create({
      title: Faker::Lorem.sentence(3).to_s,
      year_finished: birthdays.last,
      image_url: images.sample
      })


works.each do |work|

artist.works << work
end

artist.save!

end

