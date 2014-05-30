// make a function that takes a string a times out after repeating the string a random number of intervals

// function joePractice(string){
// 	var delay = Math.random() * 2000;
// 	var inter = setInterval(function(){ console.log(string) }, delay);

// 	var duration = Math.random() * 10000;
	
// 	setTimeout(function(){ clearInterval(inter); console.log("omg") }, duration );

// }

// joePractice("weeee")


// function morningPractice(breakfast){
// 	var delay = Math.random()*2000;
// 	var interval = setInterval(function(){ console.log(breakfast) }, delay);
// 	var duration = Math.random()*10000;

// 	setTimeout(function(){ clearInterval(interval); console.log("YAY! SUCCESS") }, duration);
// }

// morningPractice("Good Practice!")


function stringAdder(string, string2){
	var x = 0;
	while(x < 10){ 
		console.log(string + string2);
		x++;
	}
}

stringAdder("good", "morning")