
console.log("This is at root. I wonder when it is run...")


$( document ).ready(function(){
	console.log("This is at document ready . I wonder when it is run...")
	
	setEventHandlers();
	
});


function setEventHandlers(){
	console.log("This is at setEvenHandlers. I wonder when it is run...")
	$("#start_btn").click(function(){engine.startTimer();});

	$("#reset_btn").click(function(){engine.resetTimer();});

	$("#pause_btn").click(function(){engine.pauseTimer();});
	
	$("#timer_display").click(function(){engine.pauseTimer();});

};


function Stopwatch(){
	
	var current_stopwatch;
	var time_elapsed = 0;
	console.log("time_elapsed = "+time_elapsed);

	console.log($("#timer_display"));
	// console.log($("#timer_display").content());
	// console.log("timer_display = " + $("#timer_display").text());
	var text_holder = $("#timer_display").text();
	console.log("text_holder = "+text_holder);

	

	this.startTimer = function(timer_instance){
		console.log("runnning start timer");
		// if (!current_stopwatch){
			current_stopwatch = window.setInterval(this.add10msToTimer, 10);
		// }
	}

	this.pauseTimer = function(timer_instance){
		console.log("runnning pause timer");
		window.clearInterval(current_stopwatch);
		engine.pushToDisplay(time_elapsed);
	}


	this.resetTimer = function(){
		console.log("runnning reset timer");
		window.clearInterval(current_stopwatch);
		engine.pushToDisplay(text_holder);
	}


	this.add10msToTimer = function(timer_to_increment){
		console.log("runnning add10msToTimer");
		time_elapsed = time_elapsed + 10;
		engine.pushToDisplay(time_elapsed);
		// console.log($("#timer_display")[0]);
		// console.log($("#timer_display").text());
		// console.log($("#timer_display").text()) = "go"
		// $("#timer_display").val("");
		// $("#timer_display").val(timer);
	}

	this.pushToDisplay = function(input){
		// console.log("runnning pushToDisplay timer");
		$("#timer_display").text(input);
	}
}

var engine = new Stopwatch();