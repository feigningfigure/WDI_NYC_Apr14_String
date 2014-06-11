var Person = {};
// same as
var Person = Object.create(Object.prototype);

Person.sayHello = function() {
  return "Yo! My name be " + this.name + ".";
};

Person.isOlder = function(friend) {
	if (this.age > friend.age) {
	 return this.name + " is older than " + friend.name;
	} else {
	 return friend.name + " is older than " + this.name;  	
	}
};

var ed = Object.create(Person);
ed.name = "ed";
ed.age = 14;

var edd = Object.create(Person);
edd.name = "edd";
edd.age = 17;

console.log(ed.isOlder(edd));
console.log(ed.sayHello());
console.log(edd.sayHello());