var jqXHR;

function addEventListeners(){
	var $add_task_button = $('#add_task_button'),
		$task_text_input = $('#task_text_input'),
		$due_date_input = $('#due_date_input'),			
		$show = $('#show');			

//actual usage of these things
	//adding a task to it
	$add_task_button.click(function(){
		var params = {task_text: $task_text_input.val(),
			due_date: $due_date_input.val()
		};
		var task = new Task;
		task.create(params);							
	});
	//showing the list
	$show.click(function(){
	console.log("show all button has been clicked");
	var list = new List;
	list.create(); //this actually go ahead and creates the list to be UsEd below
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
};

var List = function(){
	console.log('the words');
	this.create = function(params){
		$.ajax({
			url: '/tasks',
			type: "GET",
			dataType: "json",
			data: params
		}).done(function(data){
			console.log(data);
			data.tasks.forEach(function(task) {
			$list.append("<li>"+ list.task + "</li>")
		});

	});
};
};
$(function(){

	addEventListeners();

});
