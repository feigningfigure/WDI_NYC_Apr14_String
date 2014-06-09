
function Person(name, age, mood){
  this.name = name;
  this.age = age;
  this.mood = mood;
  this.sayHi = function(){
    if(this.mood==="happy")
        console.log("Hi! I'm " + this.name + "!!!");
      else if(this.mood==="sad")
        console.log("Blah I'm " + this.name);
    }
}

var people = [];
var names = ["Liz", "Sara", "Dani", "Joel", "Jesse"]
for (var i = 0; i < 5; i++){
person = new Person(names[i], (Math.random() * 100).toFixed(0), "happy")
people.push(person);
}

test = new Person("Liz", 33, "happy")
// people.push(test)

console.log(test.name)
console.log(test.sayHi())
console.log(people)

