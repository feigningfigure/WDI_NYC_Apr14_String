$(document).ready(function(){
	
	var todoList = $("#todo_list");

	// The anonymous
	$("#add_task_button").click(function(){
		// To get the value of the input field user $("#task_input").val()
		var input = $("#task_input");

		todoList.append('<li>' + input.val() + '</li>');

		input.val('');

	});

});