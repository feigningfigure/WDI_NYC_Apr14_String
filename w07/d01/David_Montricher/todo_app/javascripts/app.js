$(document).ready(function(){

var todoList = $("#todo_list")

  // The anonymous function passed into .click is a callback function
  $("#add_task_button").click(function(){

    // To get the value of the input field use $("#task_input").val()
    var input = $("#task_input")

    // Adds user input to the ul
    todoList.append('<li>' + input.val() + '</li>');

    // Clears the input form
    input.val('');
  });

});


