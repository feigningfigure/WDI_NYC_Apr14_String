function setEventHandlers(){

	$("#add-quiz-button").click(function(){
		console.log("Submit button has been clicked");

		var $input = $("#quiz_input");

		$.ajax({
			url: '/quizzes',
			type: 'POST',
			dataType: 'json' ,
			data: {quiz_name: $input.val()},
		}).done(function(data){
			console.log(data);
			alert("You have added " + data);
			$input.val('');
		});

	});

	var $show_button = $("#show-button");

	$show_button.click(function(){

		clickingIsFun(); //running this function

	});

	function clickingIsFun() {

		console.log("Show button has been clicked");

		$.ajax({
			url: '/quizzes',
			type: 'GET',
			dataType: 'json',
			success : handleData
		});

	}

	function handleData(data) {
		console.log(data);
		var $quiz_list = $("#quiz_list");
		$quiz_list.empty();
		data.quizzes.forEach(function(item){
			$quiz_list.append("<li>"+ item["title"] +"</li>")
		})
	};
};


//testing setInterval
var nIntervId;

function changeColor() {
	nIntervId = setInterval(flashText, 500);
}

function flashText() {
	var oElem = document.getElementById("my_box");
	oElem.style.color = oElem.style.color == "red" ? "blue" : "red";
}

function stopTextColor() {
	clearInterval(nIntervId);
}


$( document ).ready(function(){

	setEventHandlers();//running these funcitons
	changeColor();
	setInterval(clickingIsFun, 3500);
	setInterval(handleData, 4600);
});