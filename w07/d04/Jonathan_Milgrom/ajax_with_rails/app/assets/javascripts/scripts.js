var jqXHR;

function addEventListeners(){
	var $add_task_button = $('#add_task_button'),
		$task_text_input = $('#task_text_input'),
		$due_date_input = $('#due_date_input'),
		$show_button = $('#show_button');


			$add_task_button.click(function(){
				
				var params = {task_text: $task_text_input.val(),
											due_date: $due_date_input.val()
										};
				var task = new Task;
				task.create(params);
				
				task.all();

				$('.delete_button').load()

				$task_text_input.val('');
				$due_date_input.val('');							
			});
}

function updateSelectedEventListeners(params){
	$delete_button = $('.delete_button');
	$delete_button.click(function() {
		console.log("hello");
		$.ajax({
			url: '/tasks',
			type: "DELETE",
			dataType: "json",
			data: params
		}).done(function(data){
			console.log(data);
		});
	});
}



var Task = function(){
	this.all = function() {
		var $list = $('#list');
		$.ajax({
			url: '/tasks',
			type: "GET",
			dataType: "json"
		}).done(function(data){
			console.log(data);

			$list.empty();
			data.forEach(function(item) {
				$list.append("<li>" + item.task_text + "<button type='button' class='delete_button'>delete</button></li>");
				var params =  {id: item.id};
				updateSelectedEventListeners(params);
			});

		});		
	};


	this.create = function(params){
			$.ajax({
				url: '/tasks',
				type: "POST",
				dataType: "json",
				data: params
			}).done(function(data){
				console.log(data);
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
		};
	};

$(function(){

	addEventListeners();

});


////view updaters

