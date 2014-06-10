
// ###Moody Person Object - Practice with JS Objects
// - Create an array of 5 person objects
// 	- A person should have attributes including name, age, and mood
// 	- A person should be able to `introduce` itself
// 		- This introduction should reflect their mood
// 		- For example:
// 			- If the person is happy, their introduction may be
// 				- 'Hi!  I am Bob!  Pleased to meet you!'
// 			- If the person is unhappy, their introduction may be
// 				- 'hi...  Bob here...'
// 	- Note: How to implement mood is your decision.  It could be strings like 'happy' or 'unhappy' or it also could be a range of 0 to 10, where 10 is best mood ever and 0 is worst mood ever.  Your choice here.  




var Person = function (input_obj){
	this.name = input_obj['name'];
	this.age = input_obj['age'];
	this.mood = input_obj['mood'];
	if (this.mood == 'reefer madness'){
		this.mood = 'high on life.';
	}
	this.introduction = function(){
		if (this.age < 2) {
			console.log("Waaaaaahhh!");
		}else{
		console.log("Hello, I am "+ this.name +" and I'm feeling "+ this.mood);
		}
	}
}



var fred = new Person({
	name: "Fred",
	age: 30, 
	mood: "sloppy"
});

var joe = new Person({
	name: "Joe", 
	age: 15,
	mood: "reefer madness"
});

var jim = new Person({
	name: "baby jim", 
	age: 1,
	mood: "hungry"
});



fred.introduction();
joe.introduction();
jim.introduction();




