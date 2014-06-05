function addEventListeners(){
	var $add_task_button = $('#add_task_button');
	var $task_text_input = $('#task_text_input');
	var $due_date_input = $('#due_date_input');

		$add_task_button.click(function(){
			var params = {task_text: $task_text_input.val(),
										due_date: $due_date_input.val()
								};
			var task = new Task;
			task.create(params);
		});
}

// debugger;	


var Task = function(){
	this.create = function(params){
		$.ajax({
				url: '/tasks',
				type: 'POST',
				dataType: 'json',
				data: params
			}).done(function(data){
				console.log(data);
			});
	}
}


$(function() {
	addEventListeners();
});
