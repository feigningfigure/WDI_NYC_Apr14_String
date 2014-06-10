function Person(name) {
	this.mood;

	this.whatsTheMood = function() {
		if (this.mood === "sad") {
			return false;
		}
		return true;
	};

	this.age;
	this.name = name;

	this.introduction = function() {
		if (this.whatsTheMood()) {
			console.log("Hi, I'm " + this.name + "!!!!");
			return
		}
		console.log("Ummmm, hi. I have a name.  It is " + this.name)
	}
}

var personArray = ["bob", "steve", "allen", "dave", "Sinjo"];

personArray.forEach(function(name) {
	personArray.push(new Person(name));
});

