// function setEventHandlers() {


// var count = 0

// setInterval(function(){
// 	$ajax({
// 		url: '/',
// 		type: 'GET',
// 		dataType: 'json',
// 		}).done(function(count){
// 			// var time = count
// 			var $timer = $('#timer');
// 			// $timer.empty();
// 			$timer.text('Start the clock: ' + count);
// 		}, 4500);
// });

// $('#start').on('click', function(){
// 	count++;
// 	setInterval();
// });

// }


// $(document).ready(function(){
// 	setEventHandlers();
// });

// Keri's Solution =====================

var count = 0;
var timerId = 0;

function updateTimer(){
	if (timerId > 0) {
		count = timerId;
		count++;
	}
	$('#timer').text('Time elapsed: ' + count);
}

$(function() {
	$('#start').on('click', function(){
		timerId = setInterval(updateTimer, 1000);
	});

	$('#pause').on('click', function(){
		clearInterval(timerId);
	});

	$('#reset').on('click', function(){
		clearInterval(timerId);
		count = 0
		$('#timer').text('Start the clock');
	});
});

