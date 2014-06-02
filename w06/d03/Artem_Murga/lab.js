function firstFunction(string) {
	console.log(string);
}

setTimeout(firstFunction("test"), Math.random() + 2000;
///////////A

function stringPrint(string) {
	var delay = Math.random() + 6000;
	setTimeout(function() { console.log(string) }, delay);
}

stringPrint("Hello!")


///////////B


function stringPrint(string) {
	var interval = Math.random() + 3000;
	setInterval(function() { console.log(string) }, interval);

}

stringPrint("Hello!")

var setInterval = setInterval(stringPrint, 2000)





// Part A

// Write a function in Javascript that uses a timer and takes a string as a parameter
// This function should console.log that string after a random amount of time
// Part B

// Write a function in Javascript that uses a timer and takes a string as a parameter
// This function should continuously console.log that string after a random amount of time
// Be sure to include a way to end the continous console.log
//  