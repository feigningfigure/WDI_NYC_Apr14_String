
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


function setClicks(){
  $(function() {
  	$(".remote-delete").click(function() {
				console.log("I'm clicked");
				var $id = $(this).attr('id').replace( /^\D+/g, '');
				console.log($id);
				$.ajax({
			  url: "/tasks/" + $id,
			  type: "delete",
			  dataType: "json"
				}).done(function(data){
				console.log(data);
				pullTasks();
				});
  		});
  });
}

function pullTasks(){
	// var deleteLink = "<%= link_to '(remove)', task, method: :delete:, data: {confirm: 'Are you sure?''} %>";
	var deleteLink = function(id){return "<button class='remote-delete' id='task" + id + "'>Delete</button>"}
	var $incompleteTasks = $("#incomplete_tasks");
	$.ajax({
				url: '/tasks',
				type: 'GET',
				dataType: 'json'
			}).done(function(data){
				console.log(data);
				console.log("pulltasks is getting hit");
				$incompleteTasks.empty();
				data.forEach(function(task){
					var deleteString = deleteLink(task.id);
					console.log(deleteString);
					$incompleteTasks.prepend(
						"<div class='list-item'>" + task.task_text + "</div>" + " " + deleteString
						)
				});
			setClicks();
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
			pullTasks();
		};

		this.delete = function(params){
			$.ajax({
			  url: "/tasks/" + task_id,
			  type: "delete",
			  dataType: "json",
			  data: {"_method":"delete"}
			}).done(function(data){
				console.log(data);
				pullTasks();
			});
		}
};

$(function(){

	addEventListeners();
	pullTasks();

});
