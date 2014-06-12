// In Javascript...
// EVERYTHING is an Object
// EVERYTHING (ALL OBJECTS) are enumerable!

// var Person = Object.create(Object.prototype);
var Person = {};

Person.sayHello = function() {
  return "Yo! My name be " + this.name + ".";
};

Person.isOlder = function(otherPerson) {
  return this.age > otherPerson.age;
};

var ed = Object.create(Person);
ed.name = "ed";
ed.age = 15;

var jet = Object.create(Person);
jet.name = "jet";
jet.age = 43;

console.log(jet.isOlder(ed));
console.log(jet);
console.log(ed);

console.log(Object.getPrototypeOf(jet));
console.log(Object.getPrototypeOf(ed));
console.log(Person);

console.log(jet.sayHello());
console.log(ed.sayHello());