function Person(name){
	var ssn = 972348730912;

	this.name = name;
	this.fav_color = "blue";
	this.ssn = 790886;
	this.sayHi = function(){
		console.log("Hi! I'm " + this.name);
		console.log("You seem friendly. My SS# " + this.ssn);
	}
}

friend = new Person("Joe")
console.log(friend.ssn);
friend.sayHi();