function setEventHandlers(){
	$("#add_quiz_button").click(function(){
		console.log("Submit Button has been clicked");

		var $input = $("#quiz_input");

		$.ajax({
			url: '/quizzes',
			type: 'POST',
			dataType: 'json',
			data: {quiz_name: $input.val()},
		}).done(function(data){
			console.log(data);
			$input.val('');
		});

	});

	setInterval(function(){
		var $quiz_new = $("#quiz_new");

		$.ajax({
			url: '/quizzes',
			type: 'GET',
			dataType: 'json',
		}).done(function(data){
			console.log(data);
			$quiz_new.empty();
			data.quizzes.forEach(function(item){
				$quiz_new.html("<li>"+ item["title"] +"</li>")
			})
		});

	}, 4000);

	var $show_button = $("#show_button");

	$show_button.click(function(){
		console.log("Show button has been clicked");

		var $quiz_list = $("#quiz_list");

		$.ajax({
			url: '/quizzes',
			type: 'GET',
			dataType: 'json',
		}).done(function(data){
			console.log(data);
			$quiz_list.empty();
			data.quizzes.forEach(function(item){
				$quiz_list.append("<li>"+ item["title"] +"</li>")
			})
		});
	});

}




$( document ).ready(function(){

	setEventHandlers();

});


