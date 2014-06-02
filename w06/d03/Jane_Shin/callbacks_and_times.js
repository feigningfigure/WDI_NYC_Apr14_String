var someFunc = function() {
	console.log("I am a function");
};

function callbackMeMaybe(number, callback) {
	var result = number * 10000;
	callback();
	return result
}

function notify() {
	console.log("This is annoying!")
}

function spitString(string){
	var time = Math.random(10000) + 2500;
	setTimeout(function(){console.log(string)}, time);
}

function spitString(string){
	var time = Math.random(10000) + 2500;
	var interval = setInterval(function(){console.log(string)}, time);
	clearInterval(interval);
}

clearInterval(interval)
 // ==========================================
function rapPoetry(string){
	
	var time = Math.random(10000) + 1500;
	var interval = setInterval(function() {console.log(string);}, time);

	var end = Math.random()+8000;
	setTimeout(function(){clearInterval(interval); console.log("encore")}, end)
}

rapPoetry("yo")