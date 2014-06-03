doc ready
//direct text swap see below outside because user CANT change
var todoList = $("#todo-list");

//anonymous function passed into .click is a callback function
$('add-task-button').click(function(){
    var userInput = $("task-input");

    todoList.append ('<li>; + userInput.val() + '</li>');

    $("task-input").val('');
});
/doc ready
