function randomIntFromInterval(min,max) {
  return Math.floor(Math.random()*(max-min+1)+min);
}

function Person(name) {

	this.name = name;
	this.age = randomIntFromInterval(18,100);
	this.mood = randomIntFromInterval(1,10);
	this.introduction = function(){
		if (this.mood > 5) {
		console.log("Hi, I'm "+ this.age + "-year-old " + this.name + ". I'm feeling greeeeeeeat!");
		} else {
		console.log("Hi, I'm "+ this.age + "-year-old " + this.name + ". I think you should leave me alone.");
		}
	}	
}

var moodyPeeps = [new Person("John"), new Person("Dara"), new Person("Joe"), new Person("Chris"), new Person("Keyan")];

moodyPeeps.forEach(function(peep){
	peep.introduction();
});