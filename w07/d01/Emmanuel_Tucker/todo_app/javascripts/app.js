$(document).ready(function() {
// The anonoymous passed into .click is a callback function



     $("#add_task_button").click(function(){
//The below gets the value of the input field use $("#task_input").val()


     var input = $("#task_input");
     //Adds user input to the ul

     $("#todo_list").append('<li>' + input.val() + '</li>');
// Clears the input form
     input.val('');

     });

});
