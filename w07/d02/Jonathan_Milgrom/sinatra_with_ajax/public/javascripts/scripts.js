
function setEventHandlers(){

	$("#add_quiz_button").click(function(){
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

	var $show_button = $("#show_button");

	$show_button.click(function(){
		console.log("Show button has been clicked");


		$.ajax({
			url: '/quizzes',
			type: 'GET',
			dataType: 'json',
		}).done(function(data){
			console.log(data);
			var $quiz_list = $("#quiz_list");
			$quiz_list.empty();
			data.quizzes.forEach(function(item){
				$quiz_list.append("<li>"+ item["title"] +"</li>")
			})
		})	
	});

}

function serverQueryer() {
	var $last_quiz_list = $("#last_quiz_list");

	var flashText = function() {
		$.ajax({
			url: '/quizzes',
			type: 'GET',
			dataType: 'json'
		}).done(function(data){
			console.log(data);
			$last_quiz_list.empty();
			var lastItem = data.quizzes[data.quizzes.length - 1]; 
			$last_quiz_list.append("<li>" + lastItem["title"] + "</li>");
		
		})	
	}
  	setInterval(flashText, 500);
}



$( document ).ready(function(){

	setEventHandlers();
	serverQueryer();

});