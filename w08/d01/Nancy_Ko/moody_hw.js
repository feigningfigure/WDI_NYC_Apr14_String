// var person = %w(name age mood);


// var Person = $(function(){
// 	this.name = name;
// 	this.age = age;
// 	this.mood = mood;
	 	
// });


// $(document).ready(function(){

// });

function Person(name, age, mood){
	this.name = name; 
	this.age = age;
	this.mood = mood
}


if(this.mood == "happy") {
	console.log("Hi, my name is" + this.name + "and I\''m" + this.age + "years old." + "right now I'm feeling" + this.mood + ".");
} else {
	console.log("I hope this works");
}


personArray = new Person("John", 40, "happy"); 
