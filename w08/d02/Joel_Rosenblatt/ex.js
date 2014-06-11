var Person = (
  this.sayHello = function() {
    return "My name is " + this.name + ".";
  }
  this.isOlder = function(other) {

    return this.age > other.age;
  }
  );

var ed = Object.create(Person);
ed.age = 15;

var jet = Object.create(Person);
jet.age = 43;

console.log(jet.isOlder(ed));

