var Person = {
	sayHello: function() {
		return "yo! my name be" + this.name + "."
	},
	isOlder: function(other) {
		return this.age > other.age
	} 
}

var ed = Object.create(Person);
ed.age = 15;

var jet = Object.create(Person);
jet.age = 43;

