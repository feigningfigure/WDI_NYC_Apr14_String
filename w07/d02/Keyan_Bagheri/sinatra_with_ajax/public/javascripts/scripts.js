
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
			$input.val('');
		});

	});

	setInterval(function(){

		var $quiz_list = $("#quiz_list");

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
		});	
	}, 5000);

}





$( document ).ready(function(){

	setEventHandlers();

});