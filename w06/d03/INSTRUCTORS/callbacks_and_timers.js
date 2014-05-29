// CALLBACKS

var someFunc = function() {
	console.log("I am a function");

	return "hello, i am a return"
};


var someRandomNum = function() {
	var rand = Math.random();

	// console.log(rand);
	return rand
};


function callbackMeMaybe(number, callback) {

	var result = number * 10000;

	callback(number);

	return result

}

function notify(){
	console.log("This is an annoying song. Sidenote - I am the result of the callback");
}

function madPerson(cow){
	console.log("&#YT*^!@&!!!");
	console.log(cow);
}

// TIMERS

	// SETTIMEOUT

function madPerson(){
	console.log("&#YT*^!@&!!!  THE TIMER HAS BEEN REACHED!");
}

setTimeout(madPerson, 5000);

setTimeout(function(){console.log("I am anonoymous.") }, 5000);
var interval = setInterval(madPerson, 2000)



