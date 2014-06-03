$(document).ready(function(){

//grabs jquery object fro the ul outside of event listener because we don't need to grab it every time
var todoList = $("#todo_list");

// this anonymous function is passed into .click as a callback
  $("#add_task_button").click(function(){
    // to get the value of the inout field use $("#task_input").val()
    var input = $("#task_input");

    //adds user input to the ul
    todoList.append('<li>' + input.val() + '</li>');

    // clears the input form
    input.val('');
  });

});
