# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
# #   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
# #   Mayor.create(name: 'Emanuel', city: cities.first)
# Team.delete_all


Team.create ({
	name: "lakers",
	city: "los angeles",
	url: "https://pbs.twimg.com/profile_images/378800000113462800/7d6c261f318bf6383fde4cb76659edb1_400x400.png"
	})

Team.create ({
	name: "clippers",
	city: "los angeles",
	url: "http://upload.wikimedia.org/wikipedia/en/6/66/Los_Angeles_Clippers_logo.svg"
	})

Team.create ({
	name: "spurs",
	city: "san antonio",
	url: "http://www.sports-logos-screensavers.com/user/San_Antonio_Spurs.jpg"
	})

Player.create ({
	name: "kobe bryant",
	height: 79,
	college: "lower marymont highschool",
	team_id: 1

	})

Player.create ({
	name: "pau gasol",
	height: 84,
	college: "spain",
	team_id: 1

	})
Player.create ({
	name: "chris paul",
	height: 72,
	college: "wake forest",
	team_id: 2

	})

