
function Person(name, age, mood){
  this.name = name;
  this.age = age;
  this.mood = mood;
  this.sayHi = function(){
    if(this.mood > 0 && this.mood <= 3)
        console.log("My nae is " + this.name + "... whatever");
      else if(this.mood >= 4 && this.mood <= 7)
        console.log("I'm " + this.name + " not much going on today");
      else
        console.log("I'm " + this.name + "!!!!")
    }
}

var people = [];
var names = ["Liz", "Sara", "Dani", "Joel", "Jesse"]
for (var i = 0; i < 5; i++){
person = new Person(names[i], (Math.random() * 100).toFixed(0), (Math.random() * 10).toFixed(0))
people.push(person);
}

function allSpeak(people){
  for (var i = 0; i < people.length; i++){
    people[i].sayHi();
  }
}

// test = new Person("Liz", 33, 8)
// people.push(test)

// console.log(test.name)
// console.log(test.sayHi())
console.log(people)
console.log(allSpeak(people))

