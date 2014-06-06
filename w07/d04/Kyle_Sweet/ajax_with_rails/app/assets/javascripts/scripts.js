// var jqXHR;
var $task_list = ("#task_list");

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
			}).done(function(data){
				console.log(data);
			});



				$.ajax({
				url: '/tasks',
				type: "GET",
				dataType: "json",
				data: params
			}).done(function(data){
				$task_list.empty();
				console.log(data);
				data.tasks.forEach(function(task) {
				$task_list.append("<li>" + Task.all.to_json + "</li>")
			});
		});
	};

}


$(function(){

	addEventListeners();

});