// var Person = Object.create(Object);

// Person.sayHello = function(){
//   return "Yo! My name be " + thisname + ".";
// };

// var ed = Object.create(Person);
// ed.age = 15;

// var jet = Object.create(Person);
// jet.age = 43;

// Person.isOlder = function(other) {
//   return this.age > other.age
// }


//  console.log(jet.isOlder(ed));

// THIS IS THE BEST WAY

var Person = {
  "name": "Jimbob Henrikson",
  "sayHello": function(){
    return "Yo! My name be " + this.name + ".";
  },
  "isOlder": function(other) {
    return this.age > other.age;
  }
};

var NewYorker = Object.create(Person);
NewYorker.sayHello = function() {return "Go 'way";};

var bill = Object.create(NewYorker);
bill.name = "William";
console.log(bill.sayHello());

// function Person(name, age) {
//   this.name = name;
//   this.age = age;
// }

// Person.prototype.sayHello = function(){
//   return "Hi I'm " + this.name + ".";
// };

// var jake = new Person("Jake", 22);
// console.log(jake);
// console.log(jake.sayHello());

// console.log(Person.prototype === Object.getPrototypeOf(Person));
// console.log(Person._proto_ === Object.getPrototypeOf(Person));
// console.log(Person.prototype === Object.getPrototypeOf(jake));

