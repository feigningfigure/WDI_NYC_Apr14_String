var jqXHR;

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
		task.show();
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
	};

	this.show = function() {
		$.ajax({
		url: '/tasks',
		type: "GET",
		dataType: "json"
		}).done(function(data){
			console.log(data);
			var $task_list = $("#tasks");
			$task_list.empty();
			data.forEach(function(item){
				$task_list.append("<li>" + item["task_text"] + item["due_date"] + "</li>")
			})
		});
	}
};

// jqXHR.done(function(data) {
// console.log(data);
// console.log("DONE");
// });

// jqXHR.fail(function(data) {
// console.log("FAIL");
// });

// jqXHR.error(function(data) {
// console.log("ERROR");
// });

// jqXHR.always(function(data) {
// console.log("ALWAYS");
// });


$(function(){

addEventListeners();

});

$(document).ready(function(){

	var taskList = new Task
	// console.log(taskList);
	taskList.show()

	// $.ajax({
	// 	url: '/tasks',
	// 	type: "GET",
	// 	dataType: "json"
	// 	}).done(function(data){
	// 		console.log(data);
	// 		var $task_list = $("#tasks");
	// 		$task_list.empty();
	// 		data.forEach(function(item){
	// 			$task_list.append("<li>" + item["task_text"] + item["due_date"] + "</li>")
	// 	})
	// });

});





