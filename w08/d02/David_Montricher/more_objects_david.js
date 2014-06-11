var Person = {
  sayHello: function(){
    return "My name is " + this.name + ".";
  }
};

var spike = Object.create(Person);
spike.name = "Spike Spiegel";
spike.height = "6'2";

console.log(spike.name);
console.log(spike.height);

console.log(Person.sayHello());
console.log(spike.sayHello());
