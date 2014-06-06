function addEventListeners(){
	var $add_task_button = $('#add_task_button'),
		$task_text_input = $('#task_text_input'),
		$due_date_input = $('#due_date_input'),			
		$show_task_button = $("#show_task_button");

		$add_task_button.click(function(){
			var params = {task_text: $task_text_input.val(),
							due_date: $due_date_input.val()};
			var task = new Task;
			task.create(params);							
		});

		$show_task_button.click(function(){ 
			console.log("SHOW ME SOMETHING ... PLEASE?")
// WHY ISN"T FRONTEND WORKING?? WHAT"S WRONG WITH THIS ?
		});
}

var Task = function(){
	this.create = function(params){
		$.ajax({
			url: '/tasks',
			type: "POST",
			dataType: "json",
			data: params
		}).done(function(data){
			console.log(data);
		});
	},

	this.show = function(){
		$.ajax({
			url: '/tasks/:id',
			type: "GET",
			dataType: "json"
		}).done(function(){
			console.log("PLEASE SHOW ME SOMETHING");
		});
	}
}

$(function(){
	addEventListeners();
});
		// 	jqXHR.done(function(data) {
		// 		console.log(data);
		// 		console.log("DONE");
		// 	});

		// 	jqXHR.fail(function(data) {
		// 		console.log("FAIL");
		// 	});

		// 	jqXHR.error(function(data) {
		// 		console.log("ERROR");
		// 	});

		// 	jqXHR.always(function(data) {
		// 		console.log("ALWAYS");
		// 	});