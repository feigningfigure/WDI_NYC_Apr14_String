# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Sentence.destroy_all

Sentence.create :photo_1 => "http://origincache-frc.fbcdn.net/10251505_1468592500043820_591268368_n.jpg"
, :word_1 => "ate", :photo_2 => "http://origincache-prn.fbcdn.net/10375889_318066615009778_1115196827_n.jpg", :word_2 => "while", :photo_3 => "http://origincache-prn.fbcdn.net/10362212_1408105986137998_1887722543_n.jpg"

Sentence.create :photo_1 => "http://origincache-frc.fbcdn.net/10251505_1468592500043820_591268368_n.jpg"
, :word_1 => "smoked", :photo_2 => "http://origincache-prn.fbcdn.net/10375889_318066615009778_1115196827_n.jpg", :word_2 =>  "for", :photo_3 => "http://origincache-prn.fbcdn.net/10362212_1408105986137998_1887722543_n.jpg"
