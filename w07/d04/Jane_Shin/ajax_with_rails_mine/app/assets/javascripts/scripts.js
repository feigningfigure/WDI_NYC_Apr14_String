function addEventListeners(){
	var $addTaskButton = $('#add-task-button'),
			$taskTextInput = $('#task-text-input'),
			$dueDateInput = $('#due-date-input');

	$addTaskButton.click(function(){
		var params = 	{task_text: $taskTextInput.val(),
										due_date: $dueDateInput.val()
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
			}).done(function(dataFromController){
				console.log(dataFromController);
				var $task_list = 

			});
	};
};

var taskShow = function() {
	this.edit = function(params) {
		$.ajax({
			url: '/tasks/:id',
			type: 'GET',
			dataType: 'json',
			data: params
		});
	};
};

$(function() {
	addEventListeners();
	// .load()
});




	var $addTaskButton = $('.class#id'),







