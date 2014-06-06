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
				show();
			});
			var show = function(){
			$.ajax({
				url: '/tasks',
				type: "GET",
				dataType: "json"
			}).done(function(data){
				console.log(data);
				var $task_list = $("#task_list");
				$task_list.empty();
				data.forEach(function(item){
					id_number = parseInt(item['id'])
					$task_list.append("<li class='errand' id='" + id_number + "' >" + item['task_text'] + ".  Do by: " + item["due_date"] + ".  Completed? " + item["completed"] + "</li>")
				})
			setErrandClassEventHandlers();
			});
			};
			function setErrandClassEventHandlers(){
			$('.errand').click(function(){
				var id_string = $(this).attr('id');
				$.ajax({
				url: '/tasks/' + id_string,
				type: "DELETE",
				dataType: "json",
				data: id_string
			}).done(function(data){
				console.log("this has been deleted");
			});
			show();
			})
		}
			show();
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


$(function(){

	addEventListeners();

});