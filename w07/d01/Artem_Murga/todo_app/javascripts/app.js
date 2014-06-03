// console.log('feed me javascripts')

$(document).ready(function(){

	$("add_task_button").click(function()

		var input = $("task_input")

		$("todo_list").append('<li>' + input.val() + '</li>' );
		

	});

});
