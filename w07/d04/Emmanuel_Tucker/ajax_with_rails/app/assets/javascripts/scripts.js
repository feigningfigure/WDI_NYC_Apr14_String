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




 var $add_task_button = $("#add_task_button");
    var $task_list = $("#task_list");

    $add_task_button.click(function() {
        consolesole.log("Show button has been clicked");

        $.ajax({
            url: '/tasks',
            type: 'GET',
            dataType: 'json',
        }).done(function(data) {
            console.log(data);
            $task_list.empty();
            data.tasks.forEach(function(task) {
                // This is a little redundant with the contents of index.erb
                // (line 7), but since we're thinking about HTTP headers and
                // not app design right now, it's not too much of a bother.
                $task_list.append("<li>" + task.task_name + "</li>")
            });
        });
    });

}
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


$(function(){

	addEventListeners();

});

