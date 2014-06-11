// In Javascript...
// EVERYTHING is an Object
// EVERYTHING (ALL OBJECTS) are enumerable!
var Person = {
    sayHello: function() {
        return "Yo! My name be " + this.name + ".";
    }
};

// var Person = {};
// Person.sayHello: function() { ... }

// var Person = Object.create(Object);

var spike = Object.create(Person);
spike.name = "Spike Spiegel";
spike.height = "6'2\"";

console.log(spike.name);
console.log(spike.height);

console.log();
var jack = Object.create(spike);

console.log(spike);
console.log(jack);

console.log()
console.log(jack.name);
console.log(jack.height);

console.log();
console.log(Object.getPrototypeOf(jack));

console.log();
jack.name = "Jack Black";
console.log(jack.name);
console.log(jack.height);

console.log();
console.log(Person.sayHello());
console.log(spike.sayHello());
console.log(jack.sayHello());

// Square bracket notation allows us to access
// the properties of an object PROGRAMMATICALLY.
console.log();
console.log(spike.sayHello());
console.log(spike["sayHello"]());

console.log();
console.log(spike.sayHello);
console.log(spike["sayHello"]);

console.log();
for (propertyName in "hello") {
    console.log("Spike's property: " + propertyName);
}