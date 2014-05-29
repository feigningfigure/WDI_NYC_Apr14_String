
function callbackMaybe(number, callback) { 
	// place holder for 
	var result = number * 10000;
	callback();
	return result
}

function notify(){
	console.log("this song rules.i am result of the callback");
}

callbackMaybe(212, notify)
