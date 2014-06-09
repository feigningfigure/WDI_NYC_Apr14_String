require 'ethology'

ActiveRecord::Base.connection.tables.each do |table|
  unless table == "schema_migrations"
    ActiveRecord::Base.connection.execute("TRUNCATE #{table}")
  end
end

# allow heredoc syntax for long-form text, but remove the indentations
def deindent str
  str.gsub(/^ */, "").strip()
end

Beast.create!(
  name: 'Crocotillion',
  diet: Diets::CARNIVORE,
  light_ethology: LightEthologies::DIURNAL,
  habitat: 'swamp',
  size: Sizes::LARGE,
  image_filename: 'crocotillion.png',
  description: deindent(<<-EOS)
    A fearsome beast.

    It lurks in the swamps with ferocious apathy.
  EOS
)

Beast.create!(
  name: 'Shadewink',
  diet: Diets::HERBIVORE,
  light_ethology: LightEthologies::NOCTURNAL,
  habitat: 'mountain',
  size: Sizes::MEDIUM,
  image_filename: 'shadewink.png'
)

Beast.create!(
  name: 'Moggen',
  diet: Diets::OMNIVORE,
  light_ethology: LightEthologies::CREPUSCULAR,
  habitat: 'urban',
  size: Sizes::SMALL,
  image_filename: 'moggen.png'
)

Beast.create!(
  name: 'Broog',
  diet: Diets::OMNIVORE,
  light_ethology: LightEthologies::DIURNAL,
  habitat: 'subterranean',
  size: Sizes::MEDIUM,
  image_filename: 'broog.png'
)

Beast.create!(
  name: 'Windusk Burgone',
  diet: Diets::HERBIVORE,
  light_ethology: LightEthologies::NOCTURNAL,
  habitat: 'plains',
  size: Sizes::MEDIUM,
  image_filename: 'windusk.png',
  description: deindent(<<-EOS)
    A beautiful and mysterious butterfly-like insect.

    It is said that seeing one on the night of one's betrothal is the omen
    of a lifetime of happiness, but if a Windusk should alight near you
    on the first night of a long journey, it makes for ill tidings.

    Their wings exude a dust that smells of cinnamon.
  EOS
)

Beast.create!(
  name: 'Stein\'s Owl',
  diet: Diets::HERBIVORE,
  light_ethology: LightEthologies::NOCTURNAL,
  habitat: 'forest',
  size: Sizes::SMALL,
  image_filename: 'steins_owl.png',
  description: deindent(<<-EOS)
    These owls are born in the future and roost in the past.

    In point of fact, every Stein's Owl is its own grandparent.
  EOS
)

Beast.create!(
  name: 'Torpoise',
  diet: Diets::HERBIVORE,
  light_ethology: LightEthologies::DIURNAL,
  habitat: 'ocean',
  size: Sizes::COLOSSAL,
  description: deindent(<<-EOS)
    A hard-shelled reptile that grows to incredible sizes in adulthood.

    Only three have been sighted alive; one was mistaken for an island.

    Torpoises hibernate for decades at a time, but even when they awaken,
    they move so slowly that they are unlikely to disturb the ecosystems
    which form on their shells during their long sleep.
  EOS
)

Beast.create!(
  name: 'Scryfledge',
  diet: Diets::CARNIVORE,
  light_ethology: LightEthologies::NOCTURNAL,
  habitat: 'forest',
  size: Sizes::TINY,
  image_filename: 'scryfledge.png'
)

Beast.create!(
  name: 'Nighe',
  diet: Diets::CARNIVORE,
  light_ethology: LightEthologies::DIURNAL,
  habitat: 'mountain',
  size: Sizes::SMALL,
  image_filename: 'nighe.png'
)

Beast.create!(
  name: 'Finbus',
  diet: Diets::HERBIVORE,
  light_ethology: LightEthologies::DIURNAL,
  habitat: 'plains',
  size: Sizes::MEDIUM,
  image_filename: 'finbus.png'
)

Beast.create!(
  name: 'Tiller Platypus',
  diet: Diets::HERBIVORE,
  light_ethology: LightEthologies::DIURNAL,
  habitat: 'jungle',
  size: Sizes::LARGE,
  image_filename: 'tiller_platypus.png'
)

Beast.create!(
  name: 'Dune Bonk',
  diet: Diets::HERBIVORE,
  light_ethology: LightEthologies::CREPUSCULAR,
  habitat: 'desert',
  size: Sizes::HUGE,
  image_filename: 'dune_bonk.png'
)

Beast.create!(
  name: 'Meleunic',
  diet: Diets::OMNIVORE,
  light_ethology: LightEthologies::CREPUSCULAR,
  habitat: 'ocean',
  size: Sizes::TINY,
  image_filename: 'meleunic.png'
)

Beast.create!(
  name: 'Cloud Mite',
  diet: Diets::HERBIVORE,
  light_ethology: LightEthologies::NOCTURNAL,
  habitat: 'sky',
  size: Sizes::MINUSCULE,
  image_filename: 'cloud_mite.png'
)

Beast.create!(
  name: 'Whargl',
  diet: Diets::OMNIVORE,
  light_ethology: LightEthologies::NOCTURNAL,
  habitat: 'forest',
  size: Sizes::SMALL,
  image_filename: 'whargl.png'
)

Beast.create!(
  name: 'Yoink',
  diet: Diets::HERBIVORE,
  light_ethology: LightEthologies::DIURNAL,
  habitat: 'plains',
  size: Sizes::TINY,
  image_filename: 'yoink.png'
)
