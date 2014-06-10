// DON'T DO THIS, MAX LIED AND IT IS BROKEN
// var Person = Object.create(Object);
// THIS WORKS:
// var Person = Object.create(Object.prototype);
// AND THIS WORKS EXACTLY THE SAME:
var Person = {};

Person.sayHello = function() {
    return "Yo! My name be " + this.name + ".";
};

Person.isOlder = function(other) {
    return this.age > other.age;
};

var ed = Object.create(Person);
ed.age = 15;

var jet = Object.create(Person);
jet.age = 43;

console.log(jet.isOlder(ed));
console.log(jet);
console.log(ed);

console.log(Object.getPrototypeOf(jet));
console.log(Object.getPrototypeOf(ed));
console.log(Person);

console.log()
console.log(Person === Object.getPrototypeOf(jet));
console.log(Person === Object.getPrototypeOf(ed));
console.log(Object.getPrototypeOf(jet) === Object.getPrototypeOf(ed));


