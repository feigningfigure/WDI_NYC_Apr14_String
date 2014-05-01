$happitails = Shelter.new("Happi Tails Animal Shelter","10 E 21st Street")

emmanuel = Client.new("Emmanuel Tucker",22)
andrew = Client.new("Andrew Wallace",29)
joe = Client.new("Joe Park",28)

$happitails.accept_client("Emmanuel Tucker",emmanuel)
$happitails.accept_client("Andrew Wallace",andrew)
$happitails.accept_client("Joe Park",joe)

momo = Animal.new("Momo",23,"Flying Lemur")
dino = Animal.new("Dino",1043,"Dinosaur")
scrappy = Animal.new("Scrappy-Doo",3,"Dog")
iago = Animal.new("Iago",12,"Parrot")
garfield = Animal.new("Garfield",40,"Cat")

$happitails.accept_animal("Momo",momo)
$happitails.accept_animal("Dino",dino)
$happitails.accept_animal("Scrappy-Doo",scrappy)
$happitails.accept_animal("Iago",iago)
$happitails.accept_animal("Garfield",garfield)