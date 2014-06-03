
function setEventHandlers(){

	$("#add_quiz_button").click(function(){
		console.log("Submit button has been clicked");

		var $input = $("#quiz_input");

		$.ajax({
			url: '/quizzes',
			type: 'POST',
			dataType: 'json' ,
			data: {quiz_name: $input.val()},
		})

	});

}




$( document ).ready(function(){

	setEventHandlers();

});