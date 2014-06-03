
$(document).ready(function(){

	// Grabs the jquery object for the ul.  Outside of event listener because we do not need to grab it every time the user clicks
	var todoList = $("#todo_list");

	// The anonymous passed into .click is a callback function
	$("#add_task_button").click(function(){
		// To get the value of the input field use $("#task_input").val()
		var input = $("#task_input");

		//  Adds user input to the ul 
		todoList.append('<li>' + input.val() + '</li>');

		// Clears the input form
		input.val('');
	});

});