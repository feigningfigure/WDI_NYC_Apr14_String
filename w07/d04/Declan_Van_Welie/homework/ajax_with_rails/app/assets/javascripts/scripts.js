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
				$task_text_input.val('');
				$due_date_input.val('');

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

			var	$show_tasks_button = $('#show_button');
	var $show_tasks_list =  $('#show_tasks_list');

			this.show = function(){
		 $.ajax({
		    url: '/tasks',
		    type: 'GET',
		    dataType: 'json'
		    }).done(function(data){
		    console.log(data);
	      // $show_tasks_list.empty();
	      data.tasks.forEach(function(task){
	      	 $show_tasks_list.prepend(
      "<li class='task_item'>" + task.task_text + "</li>")

      })

	    })


// task["task"].task_text





	}



$(function(){

	addEventListeners();

});
