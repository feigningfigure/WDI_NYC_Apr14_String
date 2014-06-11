var Person = {
  "name": "Jimbob Henrikson",
  "sayHello": function() {
    return "Yo! My name be " + this.name + ".";
  },
  "isOlder": function(other) {
    return this.age > other.age;
  }
};

var ed = Object.create(Person);
ed.age = 17;
ed.name = "Ed"

console.log(ed.sayHello());

var phil = Object.create(Person);
console.log(phil.sayHello());

phil.name = "Phillip";
console.log(phil.name);
console.log(phil.sayHello());

console.log();
console.log(Person.name);
var newPerson = Object.create(Person);
console.log(newPerson.name);
Person.name = "Sally";
// newPerson.name = "Richard";
console.log(Person.name);
console.log(newPerson.name);