var jqXHR;

function addEventListeners(){
	var $add_task_button = $('#add_task_button'),
			$task_text_input = $('#task_text_input'),
			$due_date_input = $('#due_date_input'),
			$show_all_button = $('#show_all_button');

			$add_task_button.click(function(){
				var params = {task_text: $task_text_input.val(),
											due_date: $due_date_input.val()
										};
				var task = new Task;
				task.create(params);
			});

			$show_all_button.click(function(){
				console.log("Show all button has been clicked")
				// var params = {task_text: $task_text_input.val(),
				// 							due_date: $due_date_input.val()
				// 						};
				// var task = new Task;
				// task.all(params);
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
		};
	};

	  var $show_all_button = $("#show_all_button");
    var $task_list = $("#task_list");

	 $.ajax({
            url: '/tasks',
            type: 'GET',
            dataType: 'json',
        }).done(function(data) {
            console.log(data);
            $task_list.empty();
              data.tasks.forEach(function(task) {
            $task_list.append("<li>" + task.task_name + "</li>")
            });
        });
    // });

// }


$(function(){

	addEventListeners();

});
