console.log('feed me javascripts')
$(document).ready(function(){


  var todoList = $("#todo_list");
  //were passing a callback to click that will
  // 1) take the take text from input and put it into the ul
  $("#add_task_button").click(function(){
    // To get the value of the input field use $("task_input").val();
    var input = $("#task_input")


    // grab the unorderd list
    //.append lets you add one more element
    //.prepend adds one more element to the beginning of list

    todoList.prepend('<li>' + input.val() + '</li>');
    //reset the value to nothing
    input.val('');
  });


});
