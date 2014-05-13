# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Genre.delete_all
Band.delete_all

Genre.new({
    name: "Jazz",
    description: "Jazz is a type of African-American music that originated in the late nineteenth and early twentieth century in the Southern United States as a combination of European harmony and forms with African musical elements such as blue notes, improvisation, polyrhythms, syncopation and the swung note. Jazz has also incorporated elements of American popular music."
    })

Genre.new({
    name: "Rock",
    description: "Rock music is a genre of popular music that originated as 'rock and roll' in the United States in the 1950s, and developed into a range of different styles in the 1960s and later, particularly in the United Kingdom and the United States. It has its roots in 1940s' and 1950s' rock and roll, itself heavily influenced by rhythm and blues and country music. Rock music also drew strongly on a number of other genres such as blues and folk, and incorporated influences from jazz, classical and other musical sources.

Musically, rock has centered on the electric guitar, usually as part of a rock group with electric bass guitar and drums. Typically, rock is song-based music usually with a 4/4 time signature using a verse-chorus form, but the genre has become extremely diverse. Like pop music, lyrics often stress romantic love but also address a wide variety of other themes that are frequently social or political in emphasis. The dominance of rock by white, male musicians has been seen as one of the key factors shaping the themes explored in rock music. Rock places a higher degree of emphasis on musicianship, live performance, and an ideology of authenticity than pop music."
    })

Genre.new({
    name: "Electronic",
    description: "Electronic music is music that employs electronic musical instruments and electronic music technology in its production, an electronic musician being a musician who composes and/or performs such music. In general a distinction can be made between sound produced using electromechanical means and that produced using electronic technology. Examples of electromechanical sound producing devices include the telharmonium, Hammond organ, and the electric guitar. Purely electronic sound production can be achieved using devices such as the Theremin, sound synthesizer, and computer.

Electronic music was once associated almost exclusively with Western art music but from the late 1960s on the availability of affordable music technology meant that music produced using electronic means became increasingly common in the popular domain. Today electronic music includes many varieties and ranges from experimental art music to popular forms such as electronic dance music."
    })

Band.create({
      name: "Miles Davis Quintet",
      content: "The Miles Davis Quintet was an American jazz band from 1955 to early 1969 led by Miles Davis. The quintet underwent frequent personnel changes toward its metamorphosis into a different ensemble in 1969. Most references pertain to two distinct and relatively stable bands: the First Great Quintet from 1955 to 1958; and the Second Great Quintet from late 1964 to early 1969, Davis being the only constant throughout.",
      genre_id: 1
      })

Band.create({
      name: "Queens Of The Stone Age",
      content: "Queens of the Stone Age is an American rock band from Palm Desert, California, United States, formed in 1996. The band's line-up includes founder Josh Homme (lead vocals, guitar, piano), alongside longtime members Troy Van Leeuwen (guitar, lap steel, keyboard, percussion, backing vocals), Michael Shuman (bass guitar, keyboard, backing vocals), Dean Fertita (keyboards, guitar, percussion, backing vocals), and recent addition Jon Theodore (drums, percussion).

Formed after the dissolution of Homme's previous band, Kyuss, Queens of the Stone Age developed a style of riff-oriented, heavy rock music. Their sound has since evolved to incorporate a variety of different styles and influences, including working with ZZ Top member Billy Gibbons and steady contributor Mark Lanegan.",
      genre_id: 2
      })

Band.create({
      name: "Justice",
      content: "Justice (stylised as Jus†ice) is a French electronic music duo consisting of Gaspard Michel Andre Augé (born 21 May 1979 in Besançon, Doubs) and Xavier de Rosnay (born 2 July 1982 in Ozoir-la-Ferrière, Seine et Marne). The duo is one of the most successful groups on Ed Banger Records and is managed by the label's head, Pedro Winter. Justice is known for incorporating a strong rock and indie influence into its music and image.",
      genre_id: 3
      })
