//intro to this
function Person(name) {
    var ssn = 2352352;

    this.name = name;
    this.favorite_color = "taupe";
    this.sayHi = function(){
        console.log("Hi! I'm " + this.name);
        console.log("You seem friendly. My SS# is " + ssn);
    }
}
friend = new Person("Bozo");

friend.sayHi();

console.log(friend.name);

stuff
function Hangman(word /*expects in future*/){
//do stuff
	this.progress = function(){
		var dots = [];
	
	for (var i = 0; i < word.length; 1++) {

	};
}

var game = new Hangman("detective");

game.progress(); //callback should return undescores

var game = new Hangman('ghandi');

game.progress(); //callback

