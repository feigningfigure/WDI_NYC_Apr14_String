var person = {
  
  name: "Spike Spiegel"
  height: "6'2\""
}

console.log(spike.name);
console.log(spike.height);

console.log();
var jack = Object.create(spike);

console.log(spike);
console.log(jack);

var Person ={
  sayHello: function() {
    return "Yo! My name be"
 + this.name + ".";
   }
   isOlder: function(other)
    return this.age > other.age;
   }
};

var ed = Object.create(Person)
ed.age = 25

var jet = Object.create(Person);
jet.age = 43;

console.log(jet.isOlder(ed));
