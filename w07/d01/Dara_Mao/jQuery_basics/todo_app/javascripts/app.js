$(document).ready(function(){
var todo_list = $("#todo_list"); //doesnt reset

  $('#add_task_button').click(function(){
    // The below gets the value of the input field; grab the object
    var input = $("#task_input"); //reset and changes every time

    //Output the input in the ul element in index
    // $("#todo_list").append("<li>"+ input.val()+ "</li>");
    todo_list.append("<li>"+ input.val()+ "</li>"); //as defined as an outside variable
    //Remove the placeholder in the input field
    // $("#task_input").val('')
    input.val(""); //because input is defined without val

  });
});
