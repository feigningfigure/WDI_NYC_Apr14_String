var seconds = 0;
var timerId = 0;
var counter = false;

function updateTimer(){
	seconds++;
	$("#timer").text("Time elapsed: " + seconds);
}

$(function(){
	$("#start").on('click', function() {
		if (counter === false) {
			timerId = setInterval(updateTimer, 1000);
			counter = true;
		}
	});

	$("#pause").on('click', function() {
		clearInterval(timerId);
		counter = false;
	});

	$("#reset").on('click', function() {
		clearInterval(timerId);
		counter = false;
		seconds = 0;
		$("#timer").text("Start the clock");
	});

});





// Joe's attempt
// function setEventHandlers(){
// 	var interval;

// 	$("#start").click(function(){
// 		var interval = setInterval(function(){
// 			var i = 1;
// 			i++;
// 			updateDisplay(i);
// 		}, 1000);
// 		return interval;
// 	});


// 	$("#pause").click(function(){
// 		clearInterval(interval);
// 	});

// 	$("#reset").click(updateDisplay("Start the Clock"));



// }

// function updateDisplay(time){
// 	var value = $("#timer").html(time);
// }



// $(document).ready(function(){
// 	setEventHandlers();
// });