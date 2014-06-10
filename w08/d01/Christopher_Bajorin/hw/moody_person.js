function randomNumber(min, max) {
  return Math.floor(Math.random() *(max - min + 1)) + min;
}

function Person() {
  var num = randomNumber(0, 4);
  var moodArray = [" the worst I've ever felt. Life sucks.", " mediocre at best.", "... meh.", " happyish.", " super-duper awesome."];
  var mood = moodArray[num];
  var peopleArray = ["Bobby", "Robby", "Tommy", "Timmy", "Joe"];
  num = randomNumber(0,4);
  var name = peopleArray[num];
  var age = randomNumber(18, 60);
  this.introduction = function() {
    console.log("Hi, my name is " + name + ". I'm " + age +" years old, and I'm feeling" + mood);
  }
}
var persons = [
a = new Person(),
b = new Person(),
c = new Person(),
d = new Person(),
e = new Person()
]


persons.forEach(function(guy) {
  guy.introduction();
});
