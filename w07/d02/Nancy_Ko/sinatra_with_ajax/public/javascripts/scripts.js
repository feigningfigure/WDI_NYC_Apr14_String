
function setEventHandlers(){

	$("#add_quiz_button").click(function(){
		console.log("Submit button has been clicked");

		var $input = $("#quiz_input");

		$.ajax({
			url: '/quizzes',
			type: 'POST',
			dataType: 'json' ,
			data: {quiz_name: $input.val()}var intervalID = window.setInterval(func, delay[, param1, param2, ...]);
		}).done(function(data){
			console.log(data);
			alert("You have added " + data);
			$input.val('');
		});

	});

	var $show_button = $("#show_button");
 
// window.setInterval(func, delay); but where to put it? 

	$show_button.click(function(){
		console.log("Show button has been clicked");
		setInterval(function() {

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
					}, 1000 );
			})
		})	
	});
}

$( document ).ready(function(){

	setEventHandlers();
	

});