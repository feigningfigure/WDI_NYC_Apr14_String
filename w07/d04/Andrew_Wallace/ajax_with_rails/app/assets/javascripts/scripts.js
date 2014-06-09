function addEventListeners(){
	var $add_task_button = $('#add_task_button'),
			$task_text_input = $('#task_text_input'),
			$due_date_input = $('#due_date_input');

			$add_task_button.click(function(){
				var params = {task_text: $task_text_input.val(),
											due_date: $due_date_input.val()
										};
				var task = new Task;
				task.create(params);
			});
}

var Task = function(){
	this.create = function(params){
			$.ajax({
				url: '/tasks',
				type: "POST",
				dataType: "json",
				data: params
			}).done(function(httpResponse){
				console.log(httpResponse);
				appendToList(httpResponse);
			});
		};
	};

	this.list = function(){
		$.ajax({
			url: '/tasks',
			type: "GET",
			dataType: "json"
		}).done(function(httpResponse){
				console.log(httpResponse);
			});
	}

	this.remove = function(task_id) {
		$.ajax({
			url: '/tasks/' + task_id,
			type: 'DELETE',
			dataType: "json",
			// data: task_id
		}).done(function(httpResponse){
				console.log("File has been deleted");
			});
	}

function appendToList(httpResponse) {
	var $task_list = $("#task_list")
	console.log("appendToList is being run")
	$task_list.append('<td>' + httpResponse["task_text"] + '</td>');
	$task_list.append('<td>' + httpResponse["due_date"] + '</td>');
	// Attempting to insert a link that accesses the delete function
	$task_list.append('<td><button ' +   + '>Delete</a></td>');
}


$(function(){

	addEventListeners();

});
