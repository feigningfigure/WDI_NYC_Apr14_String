$(document).ready(function() {
  var todoList = $("#todo_list");
  $("#add_task_button").click(function(){

    var input = $("#task_input")

    todoList.append('<li>' + input.val() + '</li>');

    input.val('');

  });


});
