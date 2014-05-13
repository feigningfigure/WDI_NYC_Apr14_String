Team.delete_all
Player.delete_all


team_names = [
"Phillies",
"Mets",
"Braves",
"Nationals",
"Marlins",
"Red Sox",
"Yankees",
"Orioles",
"Rangers",
"Pirates",
"Angels",
"Mariners"
]

12.times do

  team = Team.new({
  team: team_names.sample
})
end

position = [
"catcher",
"pitcher",
"first baseman",
"second baseman",
"third baseman",
"shortstop",
"right-field",
"left-field",
"center-field"]

players = []

108.times do

  players << Player.create({
  num: Faker::Number.number(2),
  name: Faker::Name.name,
  position: position.sample
  })
end

  players.each do |player|
  team.players << player
end

player.save!

end
