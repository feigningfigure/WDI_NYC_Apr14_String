// var person = %w(name age mood);


// var Person = $(function(){
// 	this.name = name;
// 	this.age = age;
// 	this.mood = mood;
	 	
// });


$(function(){

});

function Person(name, age mood){
	this.name = name; 
	this.age = age;
	this.mood = mood
}


if(this.mood == "happy") {
	console.log("Hi, my name is" + this.name + "and I\''m" + this.age + "years old." + "right now I'm feeling" + this.mood ".");
} else {
	console.log("I hope this works");
}


personArray = new Person%w(John 40 happy); 
