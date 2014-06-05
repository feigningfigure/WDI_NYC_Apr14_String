

var seconds = 0;
var timerID = 0;

function updateTimer() {
	seconds++;
	$("#timer").text("Jon, I've been watching you for: " + seconds + " seconds");
}

$( document ).ready(function(){
	$("#start").click(function() {
		timerID = setInterval(updateTimer, 1000);
	});

	$("#pause").click(function() {
		clearInterval(timerID);
	});

	$("#reset").click(function() {
		clearInterval(timerID);
		seconds = 0;
		$("#timer").text("Please play the stop watch game, again");
	});

});