function addEventListeners(){
var $add_task_button = $('#add_task_button'),
$task_text_input = $('#task_text_input'),
$due_date_input = $('#due_date_input');
$delete_button = $('#delete_link')

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
$('#task_text_input').val('');
$('#due_date_input').val('');
$("#task_list").prepend("<li>" + data["task_text"] + "</li>");
});

};
//I think the add_task_button ends here
$delete_button.click(function(event){
$.ajax({
url: '/tasks/id',
type: "DELETE",
dataType: "json"
}).done(function(){
	console.log("Deleted");
});
event.preventDefault();
})

};


$(function(){
$.ajax({
url: '/tasks',
type: 'GET',
dataType: 'json'
}).done(function(data){
var $task_list = $("#task_list");
for (i=0; i<data.length; i++){
var $display = $("#task_list").prepend("<li>" + data[i]["task_text"] + " " + data[i]["due_date"]+ " Task complete? " + data[i]["completed"] + " <a id='delete_link' href='/tasks/" + data[i]["id"] + "'>DELETE</a></li>");
};

console.log($display);
});

addEventListeners();

});
