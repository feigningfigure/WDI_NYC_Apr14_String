# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)100.times do

  boxing_team = BoxingTeam.new({
    name: Faker::Lorem.sentence(3).to_s,
    location: Faker::Lorem.sentence(2)
    })

  # empty array of boxers
  boxers = []

  # make 10 random boxers
  10.times do
    #add each of those 10 boxers to the array of boxers
    boxers << Boxer.create({
      name: Faker::Lorem.sentence(3).to_s,
      weightclass: Faker::Lorem.sentence(2)
      })
  end

  # add each boxers from the array to my boxing team
  boxers.each do |boxer|
    # use .boxers to attach boxers
    boxing_team.boxers << boxer
  end

  # save the newly created boxing team
  #boxing_team.save


