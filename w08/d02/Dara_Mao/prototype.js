var Person = {
  sayHello: function(){
    return "Yo! My name is" + this.name + ".";
  }
 //  isOlder: function(){
 //  return "I'm " +this.year+" years old.";
 // }
};

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
console.log(jack.year);

console.log();
console.log(Object.getPrototypeOf(jack));

console.log();
jack.name = "Jack Black";
console.log(jack.name);
console.log(jack.height);
console.log(jack.year);

console.log();
console.log(Person.sayHello());
console.log(spike.sayHello());
console.log(jack.sayHello());
console.log(jack.isOlder());

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
