var someFunc = function() {
	console.log("I am a function");
};

var someRandomNumber = function() {
	var rand = Math.random();

	return rand
};



function callbackMeMaybe(number, callback, callback2) {

	var result = number * 10000;

	callback2();

	callback(number);

	return result
}
// DO NOT invoke a callback within the parameter

function notify() {
	console.log("This is an annoying song. Sidenote - I am the result of the callback.");
}

function madPerson(number) {
	console.log("ლ(ಠ益ಠლ)");
	console.log(number);
}

// TIMERS

	// SETTIMEOUT

	setTimeout(FUNCTION, TIME);

function madPerson() {
	console.log("ლ(ಠ益ಠლ) THE TIMER HAS BEEN REACHED!!?!?");
}


setTimeout(function(){
	console.log("I am anonymous.");
	}, 5000);


	// SETINTERVAL
	setInterval(FUNCTION, TIME);

setInterval(madPerson, 2000);

var interval = setInterval(madPerson, 2000);

clearInterval(interval);





