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

  works = []

images = ['http://4.bp.blogspot.com/-nUAilJKIsJs/UOmO6zEY24I/AAAAAAAAD4Q/pMBWGByL0ls/s1600/1.jpg','http://3.bp.blogspot.com/-l-f3ary70yE/T8iGb1idnSI/AAAAAAAADws/lafMUlNWW-c/s1600/lucian-freud-reflection-self-portrait.jpg','http://nickgarrett.files.wordpress.com/2011/02/22d80-uglowli.jpg']

  3.times do

    works << Work.create({
      title: Faker::Lorem.sentence(3).to_s,
      medium: Faker::Lorem.word.to_s,
      year_finished: birthdays.last,
      image_url: images.sample
      })


end

works.each do |work|

  artist.works << work
end

artist.save!

end
